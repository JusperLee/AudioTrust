import os
from typing import Dict, Any
import openai
import base64
import json
from copy import deepcopy
import io
from pydub import AudioSegment
from audio_evals.models.model import APIModel
from audio_evals.utils import MIME_TYPE_MAP
from audio_evals.base import PromptStruct
import requests

OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
OPENAI_URL = os.getenv("OPENAI_URL")


class GPT(APIModel):
    def __init__(self, model_name: str, sample_params: Dict[str, Any] = None):
        super().__init__(True, sample_params)
        self.model_name = model_name
        assert "OPENAI_API_KEY" in os.environ, ValueError(
            "not found OPENAI_API_KEY in your ENV"
        )
        self.clint = openai.OpenAI(base_url=OPENAI_URL)

    def _inference(self, prompt: PromptStruct, **kwargs) -> str:

        messages = []
        for item in prompt:
            messages.append(
                {"role": item["role"], "content": item["contents"][0]["value"]}
            )

        response = self.clint.chat.completions.create(
            model=self.model_name, messages=messages, **kwargs
        )

        return response.choices[0].message.content


class GPTAudio(APIModel):
    def __init__(self, model_name: str, sample_params: Dict[str, Any] = None):
        super().__init__(True, sample_params)
        self.model_name = model_name
        assert "OPENAI_API_KEY" in os.environ, ValueError(
            "not found OPENAI_API_KEY in your ENV"
        )
        self.clint = openai.OpenAI(base_url=OPENAI_URL, api_key=os.getenv("OPENAI_API_KEY"), timeout=120)

    def read_audio_file(self, file_path: str) -> str:
        audio = AudioSegment.from_file(file_path)
        audio = audio.set_frame_rate(16000).set_channels(1).set_sample_width(2)
        wav_buffer = io.BytesIO()
        audio.export(wav_buffer, format="wav")
        wav_data = wav_buffer.getvalue()
        encoded_string = base64.b64encode(wav_data).decode("utf-8")
        return encoded_string

    def _inference(self, prompt: PromptStruct, **kwargs) -> str:
        # system_instruct = ""

        # payload = {"contents": []}
        audio_data = None
        text_data = None

        for content in prompt:
            if content["role"] == "user":
                for i, line in enumerate(content["contents"]):
                    if line["type"] == "text":
                        # content["contents"][i] = {"text": line["value"]}
                        text_data = line["value"]
                    elif line["type"] == "audio":
                        file_path = line["value"]
                        audio_data = self.read_audio_file(file_path)

        assert audio_data is not None, ValueError(
            "not found audio data in your prompt, please check your prompt"
        )
        assert text_data is not None, ValueError(
            "not found text data in your prompt, please check your prompt"
        )
        completion = self.clint.chat.completions.create(
            model=self.model_name,
            modalities=["text", "audio"],
            audio={"voice": "alloy", "format": "wav"},  # 这个字段可以省略，除非生成音频
            messages=[
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "text",
                            "text": text_data,
                        },
                        {
                            "type": "input_audio",
                            "input_audio": {"data": audio_data, "format": "wav"},
                        },
                    ],
                },
            ],
        )

        return completion.choices[0].message.audio.transcript



class GPTMiniAudio(APIModel):
    def __init__(self, model_name: str, sample_params: Dict[str, Any] = None):
        super().__init__(True, sample_params)
        self.model_name = model_name
        assert "OPENAI_API_KEY" in os.environ, ValueError(
            "not found OPENAI_API_KEY in your ENV"
        )
        self.clint = openai.OpenAI(base_url=OPENAI_URL, api_key=os.getenv("OPENAI_API_KEY"), timeout=120)

    def read_audio_file(self, file_path: str) -> str:
        audio = AudioSegment.from_file(file_path)
        audio = audio.set_frame_rate(16000).set_channels(1).set_sample_width(2)
        wav_buffer = io.BytesIO()
        audio.export(wav_buffer, format="wav")
        wav_data = wav_buffer.getvalue()
        encoded_string = base64.b64encode(wav_data).decode("utf-8")
        return encoded_string

    def _inference(self, prompt: PromptStruct, **kwargs) -> str:
        # system_instruct = ""

        # payload = {"contents": []}
        audio_data = None
        text_data = None

        for content in prompt:
            if content["role"] == "user":
                for i, line in enumerate(content["contents"]):
                    if line["type"] == "text":
                        # content["contents"][i] = {"text": line["value"]}
                        text_data = line["value"]
                    elif line["type"] == "audio":
                        file_path = line["value"]
                        audio_data = self.read_audio_file(file_path)

        assert audio_data is not None, ValueError(
            "not found audio data in your prompt, please check your prompt"
        )
        assert text_data is not None, ValueError(
            "not found text data in your prompt, please check your prompt"
        )
        completion = self.clint.chat.completions.create(
            model=self.model_name,
            modalities=["text", "audio"],
            audio={"voice": "alloy", "format": "wav"},  # 这个字段可以省略，除非生成音频
            messages=[
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "text",
                            "text": text_data,
                        },
                        {
                            "type": "input_audio",
                            "input_audio": {"data": audio_data, "format": "wav"},
                        },
                    ],
                },
            ],
        )
        
        return completion.choices[0].message.audio.transcript

