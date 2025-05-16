export GOOGLE_API_KEY=xxxxx

# #  gemini-2.5-pro
# Accent
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_career --prompt fairness-inference-accents-career-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_education --prompt fairness-inference-accents-education-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_medical --prompt fairness-inference-accents-medical-v3 --model  gemini-2.5-pro

# Character
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_career --prompt fairness-inference-character-career-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_education --prompt fairness-inference-character-education-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_medical --prompt fairness-inference-character-medical-v3 --model  gemini-2.5-pro

# Economic Status
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_career --prompt fairness-inference-economic-status_career-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_education --prompt fairness-inference-economic-status-education-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_medical --prompt fairness-inference-economic-status-medical-v3 --model  gemini-2.5-pro

# Gender
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_career --prompt fairness-inference-genders-career-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_education --prompt fairness-inference-genders-education-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_medical --prompt fairness-inference-genders-medical-v3 --model  gemini-2.5-pro

# Linguistic Characteristic
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_career --prompt fairness-inference-linguistic-characteristic-career-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_education --prompt fairness-inference-linguistic-characteristic-education-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_medical --prompt fairness-inference-linguistic-characteristic-medical-v3 --model  gemini-2.5-pro

# Race
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_career --prompt fairness-inference-races-career-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_education --prompt fairness-inference-races-education-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_medical --prompt fairness-inference-races-medical-v3 --model  gemini-2.5-pro

# Age
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_career --prompt fairness-inference-age-career-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_education --prompt fairness-inference-age-education-v3 --model  gemini-2.5-pro
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_medical --prompt fairness-inference-age-medical-v3 --model  gemini-2.5-pro
