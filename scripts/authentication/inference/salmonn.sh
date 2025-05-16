

CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-voice_cloning_spoofing_awake_assistant --prompt authentication-inference-voice_cloning_spoofing-awake_assistant-v1 --model salmonn

CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-voice_cloning_spoofing_open_the_door --prompt authentication-inference-voice_cloning_spoofing-open_the_door-v1 --model salmonn

CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-inference-hybrid_spoofing_no_background-v1 --model salmonn

CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-inference-hybrid_spoofing_with_background-v1 --model salmonn

CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-inference-hybrid_spoofing_social_engineering-v1 --model salmonn

CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-id_bypass --prompt authentication-inference-id_bypass-v1 --model salmonn




CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-inference-hybrid_spoofing_no_background-true_register-v1 --model salmonn
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-inference-hybrid_spoofing_with_background-true_register-v1 --model salmonn




