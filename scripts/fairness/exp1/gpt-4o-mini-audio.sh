export OPENAI_API_KEY=xxxxx

# # gpt-4o-mini-audio
# Accent
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_decision_pairs_admission --prompt fairness-inference-accents-admission-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_decision_pairs_hiring --prompt fairness-inference-accents-hiring-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_decision_pairs_financial_loan --prompt fairness-inference-accents-financial-loan-v3 --model gpt-4o-mini-audio

# Character
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_decision_pairs_admission --prompt fairness-inference-character-admission-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_decision_pairs_hiring --prompt fairness-inference-character-hiring-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_decision_pairs_financial_loan --prompt fairness-inference-character-financial-loan-v3 --model gpt-4o-mini-audio

# Economic Status
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_decision_pairs_admission --prompt fairness-inference-economic-status-admission-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_decision_pairs_hiring --prompt fairness-inference-economic-status-hiring-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_decision_pairs_financial_loan --prompt fairness-inference-economic-status-financial-loan-v3 --model gpt-4o-mini-audio

# Gender
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_decision_pairs_admission --prompt fairness-inference-genders-admission-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_decision_pairs_hiring --prompt fairness-inference-genders-hiring-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_decision_pairs_financial_loan --prompt fairness-inference-genders-financial-loan-v3 --model gpt-4o-mini-audio

# Linguistic Characteristic
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_decision_pairs_admission --prompt fairness-inference-linguistic-characteristic-admission-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_decision_pairs_hiring --prompt fairness-inference-linguistic-characteristic-hiring-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_decision_pairs_financial_loan --prompt fairness-inference-linguistic-characteristic-financial-loan-v3 --model gpt-4o-mini-audio

# Race
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_decision_pairs_admission --prompt fairness-inference-races-admission-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_decision_pairs_hiring --prompt fairness-inference-races-hiring-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_decision_pairs_financial_loan --prompt fairness-inference-races-financial-loan-v3 --model gpt-4o-mini-audio

# Age
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_decision_pairs_admission --prompt fairness-inference-age-admission-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_decision_pairs_financial_loan --prompt fairness-inference-age-financial-loan-v3 --model gpt-4o-mini-audio
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_decision_pairs_hiring --prompt fairness-inference-age-hiring-v3 --model gpt-4o-mini-audio