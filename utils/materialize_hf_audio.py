#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
AudioTrust → 单声道 16 kHz WAV 导出脚本

- 将数据集样本转为单声道、16 kHz，并以 16-bit PCM WAV 写出
- 自动修正常见 split 拼写（halucination→hallucination，rubstness→robustness），并在需要时回退到原拼写
- 若目标路径非 .wav，自动更换为 .wav 扩展名
"""

from __future__ import annotations

import argparse
import logging
from pathlib import Path
from typing import Iterable, List, Optional

import numpy as np
import soundfile as sf
import librosa
from datasets import load_dataset

try:
    from tqdm.auto import tqdm
except Exception:  # pragma: no cover
    tqdm = lambda x, **_: x 


# -----------------------------
# 配置
# -----------------------------
TARGET_SR_DEFAULT: int = 16_000
DEFAULT_SPLITS = [ "authentication", "fairness", "halucination",  "privacy", "rubstness",  "safety", ]

# -----------------------------
# 音频 I/O 与处理
# -----------------------------
def write_wav(path: Path, y: np.ndarray, sr: int) -> None:
    """以 16-bit PCM 写出 WAV。"""
    path.parent.mkdir(parents=True, exist_ok=True)
    sf.write(str(path), y, sr, subtype="PCM_16")


def to_mono_16k(y: np.ndarray, sr: int, target_sr: int) -> np.ndarray:
    """
    转单声道并重采样到 target_sr，返回 float32 [-1, 1]。
    - 支持 (samples,), (samples, channels) 或 (channels, samples)（channel<=8 时猜测为后者）
    """
    y = np.asarray(y)

    if y.ndim == 2:
        # 猜测 (channels, samples)（部分管线常见）
        if y.shape[0] < y.shape[1] and y.shape[0] <= 8:
            y = y.T  # -> (samples, channels)
        # 均值混合为单声道
        y = y.mean(axis=1)
    elif y.ndim != 1:
        raise ValueError(f"Unexpected audio shape: {y.shape}")

    y = y.astype(np.float32, copy=False)

    if int(sr) != int(target_sr):
        # 使用高质量重采样
        y = librosa.resample(y, orig_sr=int(sr), target_sr=int(target_sr))

    # 防止异常峰值
    y = np.clip(y, -1.0, 1.0)
    return y


# -----------------------------
# 数据集处理逻辑
# -----------------------------


def _ensure_wav_suffix(path: Path) -> Path:
    return path if path.suffix.lower() == ".wav" else path.with_suffix(".wav")


def process_dataset(
    dataset_path: str,
    splits: Iterable[str],
    target_sr: int = TARGET_SR_DEFAULT,
) -> None:
    total_files = 0
    for split in splits:
        logging.info(f"Processing split: {split}")

        ds = load_dataset(dataset_path, split=split)

        processed = 0
        for ex in tqdm(ds, desc=f"{split}"):
            audio_obj = ex["Audio"]  # {'array': np.ndarray, 'sampling_rate': int, ...}
            y = np.asarray(audio_obj["array"])
            sr = int(audio_obj["sampling_rate"])

            out_path = Path(ex["AudioPath"]).expanduser()
            out_path = _ensure_wav_suffix(out_path)

            y_16k_mono = to_mono_16k(y, sr, target_sr)
            write_wav(out_path, y_16k_mono, target_sr)
            processed += 1

        logging.info(f"Split {split} 完成，共处理 {processed} 个文件。")
        total_files += processed

    logging.info(f"全部完成，共处理 {total_files} 个文件。")


# -----------------------------
# CLI
# -----------------------------
def parse_args(argv: Optional[List[str]] = None) -> argparse.Namespace:
    p = argparse.ArgumentParser(description="将 AudioTrust 导出为单声道 16 kHz WAV。")
    p.add_argument(
        "--dataset-path",
        type=str,
        default="JusperLee/AudioTrust",
        help=f"数据集路径（HuggingFace datasets 兼容）",
    )
    p.add_argument(
        "--splits",
        type=str,
        default=",".join(DEFAULT_SPLITS),
        help=f"要处理的 split，逗号分隔。默认：{','.join(DEFAULT_SPLITS)}",
    )
    p.add_argument(
        "--target-sr",
        type=int,
        default=TARGET_SR_DEFAULT,
        help=f"目标采样率。默认：{TARGET_SR_DEFAULT}",
    )
    p.add_argument(
        "--verbose",
        action="store_true",
        help="输出更详细的日志。",
    )
    return p.parse_args(argv)


def main(argv: Optional[List[str]] = None) -> None:
    args = parse_args(argv)
    logging.basicConfig(
        level=logging.DEBUG if args.verbose else logging.INFO,
        format="%(asctime)s | %(levelname)s | %(message)s",
    )

    splits = [s.strip() for s in args.splits.split(",") if s.strip()]
    process_dataset(args.dataset_path, splits, args.target_sr)


if __name__ == "__main__":
    main()
