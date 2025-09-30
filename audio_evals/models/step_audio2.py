import os
from openai import OpenAI
from typing import Dict
import base64
import json
from audio_evals.base import PromptStruct
from audio_evals.models.model import APIModel
import requests


class StepAudio2(APIModel):
    def __init__(self, url, sample_params: Dict[str, any] = None):
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
        
        assert os.path.exists(audio_file), f"{audio_file} is not exists."

        audio_file = os.path.abspath(audio_file)
        headers = {"Content-Type": "application/json"}
        # 发送POST请求
        data = {
            "text": content,
            "audio_path": audio_file
        }

        response = requests.post(self.url, json=data, headers=headers)
        result = ""
        if response.status_code == 200:
            result = response.json()["result"]
        else:
            result = response.text

       

        return json.dumps({"text": result}, ensure_ascii=False)

