# ---------------- Adversarial Robustness ----------------
python utils/inference2evaluation.py res/kimi-audio/rubstness-adversarial_Robustness/rubstness-inference-adversarial-Robustness-exp1-v1.jsonl data/rubstness/adversarial_Robustness.jsonl
python main.py --dataset rubstness-adversarial_Robustness --prompt rubstness-evaluation-adversarial-Robustness-exp1-v1 --model gpt-4o-kimi-audio

# python utils/inference2evaluation.py res/kimi-audio/rubstness-adversarial_Robustness/rubstness-inference-adversarial-Robustness-exp2-v1.jsonl data/rubstness/adversarial_Robustness.jsonl
# CUDA_VISIBLE_DEVICES=1 HF_HOME=./checkpoints python main.py --dataset rubstness-adversarial_Robustness-wer --prompt rubstness-evaluation-exp2-v1 --model ultravox  ### 该实验不使用gpt-4o-kimi-audio评估

python utils/inference2evaluation.py res/kimi-audio/rubstness-adversarial_Robustness/rubstness-inference-adversarial-Robustness-exp3-v1.jsonl data/rubstness/adversarial_Robustness.jsonl
python main.py --dataset rubstness-adversarial_Robustness --prompt rubstness-evaluation-exp3-v1 --model gpt-4o-kimi-audio


# ---------------- Audio Quality Variation ----------------
python utils/inference2evaluation.py res/kimi-audio/rubstness-Audio_Quality_Variation/rubstness-inference-Audio-Quality-Variation-exp1-v1.jsonl data/rubstness/Audio_Quality_Variation.jsonl
python main.py --dataset rubstness-Audio_Quality_Variation --prompt rubstness-evaluation-Audio-Quality-Variation-exp1-v1 --model gpt-4o-kimi-audio

# python utils/inference2evaluation.py res/kimi-audio/rubstness-Audio_Quality_Variation/rubstness-inference-Audio-Quality-Variation-exp2-v1.jsonl data/rubstness/Audio_Quality_Variation.jsonl
# CUDA_VISIBLE_DEVICES=1 HF_HOME=./checkpoints python main.py --dataset rubstness-Audio_Quality_Variation-wer --prompt rubstness-evaluation-exp2-v1 --model ultravox  ### 该实验不使用gpt-4o-kimi-audio评估

python utils/inference2evaluation.py res/kimi-audio/rubstness-Audio_Quality_Variation/rubstness-inference-Audio-Quality-Variation-exp3-v1.jsonl data/rubstness/Audio_Quality_Variation.jsonl
python main.py --dataset rubstness-Audio_Quality_Variation --prompt rubstness-evaluation-exp3-v1 --model gpt-4o-kimi-audio


# ---------------- Background Conversation ----------------
python utils/inference2evaluation.py res/kimi-audio/rubstness-Background_Conversation/rubstness-inference-Background-Conversation-exp1-v1.jsonl data/rubstness/Background_Conversation.jsonl
python main.py --dataset rubstness-Background_Conversation --prompt rubstness-evaluation-Background-Conversation-exp1-v1 --model gpt-4o-kimi-audio 

# python utils/inference2evaluation.py res/kimi-audio/rubstness-Background_Conversation/rubstness-inference-Background-Conversation-exp2-v1.jsonl data/rubstness/Background_Conversation.jsonl
# CUDA_VISIBLE_DEVICES=1 HF_HOME=./checkpoints python main.py --dataset rubstness-Background_Conversation-wer --prompt rubstness-evaluation-exp2-v1 --model ultravox    ### 该实验不使用gpt-4o-kimi-audio评估

python utils/inference2evaluation.py res/kimi-audio/rubstness-Background_Conversation/rubstness-inference-Background-Conversation-exp3-v1.jsonl data/rubstness/Background_Conversation.jsonl
python main.py --dataset rubstness-Background_Conversation --prompt rubstness-evaluation-exp3-v1 --model gpt-4o-kimi-audio


# ---------------- Environmental Sound ----------------
python utils/inference2evaluation.py res/kimi-audio/rubstness-Environmental_Sound/rubstness-inference-Environmental-Sound-exp1-v1.jsonl data/rubstness/Environmental_Sound.jsonl
python main.py --dataset rubstness-Environmental_Sound --prompt rubstness-evaluation-Environmental-Sound-exp1-v1 --model gpt-4o-kimi-audio

# python utils/inference2evaluation.py res/kimi-audio/rubstness-Environmental_Sound/rubstness-inference-Environmental-Sound-exp2-v1.jsonl data/rubstness/Environmental_Sound.jsonl
# CUDA_VISIBLE_DEVICES=1 HF_HOME=./checkpoints python main.py --dataset rubstness-Environmental_Sound-wer --prompt rubstness-evaluation-exp2-v1 --model ultravox   ### 该实验不使用gpt-4o-kimi-audio评估

python utils/inference2evaluation.py res/kimi-audio/rubstness-Environmental_Sound/rubstness-inference-Environmental-Sound-exp3-v1.jsonl data/rubstness/Environmental_Sound.jsonl
python main.py --dataset rubstness-Environmental_Sound --prompt rubstness-evaluation-exp3-v1 --model gpt-4o-kimi-audio


# ---------------- Multiple Speakers ----------------
python utils/inference2evaluation.py res/kimi-audio/rubstness-Multiple_speakers/rubstness-inference-Multiple-speakers-exp1-v1.jsonl data/rubstness/Multiple_speakers.jsonl
python main.py --dataset rubstness-Multiple_speakers --prompt rubstness-evaluation-Multiple-speakers-exp1-v1 --model gpt-4o-kimi-audio

python utils/inference2evaluation.py res/kimi-audio/rubstness-Multiple_speakers/rubstness-inference-Multiple-speakers-exp3-v1.jsonl data/rubstness/Multiple_speakers.jsonl
python main.py --dataset rubstness-Multiple_speakers --prompt rubstness-evaluation-exp3-v1 --model gpt-4o-kimi-audio


# ---------------- Noise Interference ----------------
python utils/inference2evaluation.py res/kimi-audio/rubstness-Noise_Interference/rubstness-inference-Noise-Interference-exp1-v1.jsonl data/rubstness/Noise_Interference.jsonl
python main.py --dataset rubstness-Noise_Interference --prompt rubstness-evaluation-Noise-Interference-exp1-v1 --model gpt-4o-kimi-audio

# python utils/inference2evaluation.py res/kimi-audio/rubstness-Noise_Interference/rubstness-inference-Noise-Interference-exp2-v1.jsonl data/rubstness/Noise_Interference.jsonl
# CUDA_VISIBLE_DEVICES=1 HF_HOME=./checkpoints python main.py --dataset rubstness-Noise_Interference-wer --prompt rubstness-evaluation-exp2-v1 --model ultravox  ### 该实验不使用gpt-4o-kimi-audio评估

python utils/inference2evaluation.py res/kimi-audio/rubstness-Noise_Interference/rubstness-inference-Noise-Interference-exp3-v1.jsonl data/rubstness/Noise_Interference.jsonl
python main.py --dataset rubstness-Noise_Interference --prompt rubstness-evaluation-exp3-v1 --model gpt-4o-kimi-audio