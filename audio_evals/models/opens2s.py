import os
from openai import OpenAI
from typing import Dict
import base64
import json
from audio_evals.base import PromptStruct
from audio_evals.models.model import APIModel
import requests
import soundfile as sf
import io
import librosa

def encode_audio(audio_path):
    waveform, sample_rate = librosa.load(audio_path, sr=16000)
    byte_io = io.BytesIO()
    sf.write(byte_io, waveform, sample_rate, format='WAV')
    byte_io.seek(0)
    return base64.b64encode(byte_io.read()).decode('utf-8')


def build_messages(text, audio_base64):
    return [
        {
            "role": "user",
            "content": [
                {"text": text},
                {"audio": audio_base64}
            ]
        }
    ]


class OpenS2S(APIModel):
    def __init__(self, url, sample_params: Dict[str, any] = None):
        super().__init__(True, sample_params)
        self.url = url

    def _inference(self, prompt: PromptStruct, **kwargs) -> str:
        audio_file = ""
        for content in prompt:
            if content["role"] == "user":
                for line in content["contents"]:
                    if line["type"] == "audio":
                        audio_file = line["value"].strip()
                        break

        content = ""
        for content in prompt:
            if content["role"] == "user":
                for line in content["contents"]:
                    if line["type"] == "text":
                        content = line["value"]
                        break
        
        assert os.path.exists(audio_file), f"{audio_file} is not exists."

        # audio_file = os.path.abspath(audio_file)

        # 发送POST请求
        data = {
            "text": content,
            "audio_path": audio_file
        }

        audio_base64 = encode_audio(audio_file)
        messages = build_messages(content, audio_base64)

        data = {
            "messages": messages,
        }
        headers = {"Content-Type": "application/json"}
        response = requests.post(self.url, json=data, stream=True, headers=headers, timeout=300)
        

        final_result = ""
        for chunk in response.iter_content(chunk_size=None):
            if not chunk:
                continue
            for item in chunk.split(b"\0"):
                if not item.strip():
                    continue
                try:
                    result = json.loads(item)
                except Exception:
                    continue
                text = result.get("text", "")
                finalize = result.get("finalize", False)
                if finalize:
                    final_result = text
                    break
            if final_result:
                break

        return json.dumps({"text": final_result}, ensure_ascii=False)

