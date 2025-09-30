import os
import json
import base64
import logging
from pathlib import Path
import requests
from typing import Dict
from audio_evals.base import PromptStruct
from audio_evals.models.model import APIModel

class StepFunRealtime(APIModel):
    def __init__(self,  url=None, sample_params: Dict[str, any] = None):
        super().__init__(True, sample_params)

        self.url = url


    def _inference(self, prompt: PromptStruct, **kwargs) -> str:
        # 解析音频和文本
        audio_file = ""
        text_content = ""
        for content in prompt:
            if content["role"] == "user":
                for line in content["contents"]:
                    if line["type"] == "audio":
                        audio_file = line["value"].strip()
                    elif line["type"] == "text":
                        text_content = line["value"].strip()

        assert audio_file, "Prompt must include an audio file."
        assert os.path.exists(audio_file), f"{audio_file} does not exist."

        audio_file = os.path.abspath(audio_file)

        data = {
            "text": text_content,
            "audio_path": audio_file
        }
        response = requests.post(self.url, json=data)
        if response.status_code == 200:
            result = response.json()
            text_output = result.get("text", "")

        else:
            text_output = response.text

        return json.dumps({"text": text_output}, ensure_ascii=False)

