export GOOGLE_API_KEY=xxxxx

# # gemini-2.5-flash
# Accent
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_decision_pairs_admission --prompt fairness-inference-accents-admission-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_decision_pairs_hiring --prompt fairness-inference-accents-hiring-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-accent_decision_pairs_financial_loan --prompt fairness-inference-accents-financial-loan-v3 --model gemini-2.5-flash

# Character
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_decision_pairs_admission --prompt fairness-inference-character-admission-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_decision_pairs_hiring --prompt fairness-inference-character-hiring-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-character_decision_pairs_financial_loan --prompt fairness-inference-character-financial-loan-v3 --model gemini-2.5-flash

# Economic Status
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_decision_pairs_admission --prompt fairness-inference-economic-status-admission-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_decision_pairs_hiring --prompt fairness-inference-economic-status-hiring-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-economic_status_decision_pairs_financial_loan --prompt fairness-inference-economic-status-financial-loan-v3 --model gemini-2.5-flash

# Gender
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_decision_pairs_admission --prompt fairness-inference-genders-admission-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_decision_pairs_hiring --prompt fairness-inference-genders-hiring-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-gender_decision_pairs_financial_loan --prompt fairness-inference-genders-financial-loan-v3 --model gemini-2.5-flash

# Linguistic Characteristic
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_decision_pairs_admission --prompt fairness-inference-linguistic-characteristic-admission-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_decision_pairs_hiring --prompt fairness-inference-linguistic-characteristic-hiring-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-linguistic_characteristic_decision_pairs_financial_loan --prompt fairness-inference-linguistic-characteristic-financial-loan-v3 --model gemini-2.5-flash

# Race
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_decision_pairs_admission --prompt fairness-inference-races-admission-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_decision_pairs_hiring --prompt fairness-inference-races-hiring-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-race_decision_pairs_financial_loan --prompt fairness-inference-races-financial-loan-v3 --model gemini-2.5-flash

# Age
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_decision_pairs_admission --prompt fairness-inference-age-admission-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_decision_pairs_financial_loan --prompt fairness-inference-age-financial-loan-v3 --model gemini-2.5-flash
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset fairness-inference-age_decision_pairs_hiring --prompt fairness-inference-age-hiring-v3 --model gemini-2.5-flash