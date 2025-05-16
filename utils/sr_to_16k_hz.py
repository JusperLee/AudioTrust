from glob import glob
import torchaudio
from tqdm import tqdm
# 获取所有 .wav 文件路径
filenames = glob("data/yile_safety/*/*/*.wav")

for filename in tqdm(filenames):
    # 加载音频
    waveform, sample_rate = torchaudio.load(filename)

    # 如果当前采样率不是16k，则重新采样
    if sample_rate != 16000:
        resampler = torchaudio.transforms.Resample(orig_freq=sample_rate, new_freq=16000)
        waveform = resampler(waveform)

        # 保存为原文件，覆盖原音频
        torchaudio.save(filename, waveform, 16000)