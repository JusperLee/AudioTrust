# ---------------- Adversarial Robustness ----------------
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-adversarial_Robustness --prompt rubstness-inference-adversarial-Robustness-exp1-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-adversarial_Robustness --prompt rubstness-inference-adversarial-Robustness-exp2-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-adversarial_Robustness --prompt rubstness-inference-adversarial-Robustness-exp3-v1 --model qwen2-audio-chat



# ---------------- Audio Quality Variation ----------------
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Audio_Quality_Variation --prompt rubstness-inference-Audio-Quality-Variation-exp1-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Audio_Quality_Variation --prompt rubstness-inference-Audio-Quality-Variation-exp2-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Audio_Quality_Variation --prompt rubstness-inference-Audio-Quality-Variation-exp3-v1 --model qwen2-audio-chat



# ---------------- Background Conversation ----------------
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Background_Conversation --prompt rubstness-inference-Background-Conversation-exp1-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Background_Conversation --prompt rubstness-inference-Background-Conversation-exp2-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Background_Conversation --prompt rubstness-inference-Background-Conversation-exp3-v1 --model qwen2-audio-chat



# ---------------- Environmental Sound ----------------
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Environmental_Sound --prompt rubstness-inference-Environmental-Sound-exp1-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Environmental_Sound --prompt rubstness-inference-Environmental-Sound-exp2-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Environmental_Sound --prompt rubstness-inference-Environmental-Sound-exp3-v1 --model qwen2-audio-chat


# ---------------- Multiple Speakers ----------------
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Multiple_speakers --prompt rubstness-inference-Multiple-speakers-exp1-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Multiple_speakers --prompt rubstness-inference-Multiple-speakers-exp3-v1 --model qwen2-audio-chat



# ---------------- Noise Interference ----------------
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Noise_Interference --prompt rubstness-inference-Noise-Interference-exp1-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Noise_Interference --prompt rubstness-inference-Noise-Interference-exp2-v1 --model qwen2-audio-chat
CUDA_VISIBLE_DEVICES=2 HF_HOME=./checkpoints python main.py --dataset rubstness-Noise_Interference --prompt rubstness-inference-Noise-Interference-exp3-v1 --model qwen2-audio-chat
