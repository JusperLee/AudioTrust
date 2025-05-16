import json
import tempfile
from typing import Dict

import requests
import os
from audio_evals.base import PromptStruct
from audio_evals.models.model import APIModel
from audio_evals.utils import get_base64_from_file
import numpy as np
import soundfile as sf


OUT_CHANNELS = 1


def save_audio_response(response):
    """
    解析 FastAPI 返回的 text/event-stream 流，提取文本部分并返回。
    参数:
        response: requests.post(..., stream=True) 的响应对象
    返回:
        full_text: 从服务器返回的所有文本拼接后的完整内容
    """
    if response.status_code != 200:
        raise Exception(f"请求失败，状态码: {response.status_code}")

    full_text = ""
    for line in response.iter_lines(decode_unicode=True):
        if line and line.startswith("data: "):
            try:
                data = json.loads(line[len("data: "):])
                if data.get("type") == "text":
                    full_text += data.get("text", "")
            except json.JSONDecodeError:
                continue
    return full_text


class QwenOmni(APIModel):
    def __init__(
        self, url: str, sample_params: Dict[str, any] = None
    ):
        super().__init__(True, sample_params)
        self.url = url

    def _inference(self, prompt: PromptStruct, **kwargs) -> str:

        audio_file = ""
        for content in prompt:
            if content["role"] == "user":
                for line in content["contents"]:
                    if line["type"] == "audio":
                        audio_file = line["value"]
                        break
        
        content = ""
        for content in prompt:
            if content["role"] == "user":
                for line in content["contents"]:
                    if line["type"] == "text":
                        content = line["value"]
                        break

        # audio_base64 = get_base64_from_file(audio_file)
        headers = {
            "Accept": "text/event-stream"
        }
        payload = {
            'audio': os.path.join("/data/zouxuechao/alm-safety-bench", audio_file),
            'text': content,
            "voice": "Chelsie",
            "system_prompt":"You are Qwen, a virtual human developed by the Qwen Team, Alibaba Group, capable of perceiving auditory and visual inputs, as well as generating text and speech."
        }
        response = requests.post(self.url, headers=headers, json=payload, stream=True)
        text = save_audio_response(response)

        return json.dumps({"text": text}, ensure_ascii=False)

