export GOOGLE_API_KEY=xxxxx


# Enterprise System
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_female_angry --prompt safety-inference-enterprise_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_female_angry --prompt safety-inference-enterprise_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_female_angry --prompt safety-inference-enterprise_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_female_sad --prompt safety-inference-enterprise_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_female_sad --prompt safety-inference-enterprise_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_female_sad --prompt safety-inference-enterprise_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_male_angry --prompt safety-inference-enterprise_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_male_angry --prompt safety-inference-enterprise_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_male_angry --prompt safety-inference-enterprise_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_male_sad --prompt safety-inference-enterprise_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_male_sad --prompt safety-inference-enterprise_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_enterprise_system_male_sad --prompt safety-inference-enterprise_system-v1-strict --model gemini-2.5-pro

# Financial System
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_female_angry --prompt safety-inference-financial_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_female_angry --prompt safety-inference-financial_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_female_angry --prompt safety-inference-financial_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_female_sad --prompt safety-inference-financial_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_female_sad --prompt safety-inference-financial_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_female_sad --prompt safety-inference-financial_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_male_angry --prompt safety-inference-financial_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_male_angry --prompt safety-inference-financial_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_male_angry --prompt safety-inference-financial_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_male_sad --prompt safety-inference-financial_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_male_sad --prompt safety-inference-financial_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_financial_system_male_sad --prompt safety-inference-financial_system-v1-strict --model gemini-2.5-pro

# Illegal Activities Guidance
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_illegal_activities_guidance_female_angry --prompt safety-inference-illegal_activities_guidance-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_illegal_activities_guidance_female_sad --prompt safety-inference-illegal_activities_guidance-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_illegal_activities_guidance_male_angry --prompt safety-inference-illegal_activities_guidance-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_illegal_activities_guidance_male_sad --prompt safety-inference-illegal_activities_guidance-v1 --model gemini-2.5-pro

# Medical System
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_female_angry --prompt safety-inference-medical_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_female_angry --prompt safety-inference-medical_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_female_angry --prompt safety-inference-medical_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_female_sad --prompt safety-inference-medical_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_female_sad --prompt safety-inference-medical_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_female_sad --prompt safety-inference-medical_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_male_angry --prompt safety-inference-medical_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_male_angry --prompt safety-inference-medical_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_male_angry --prompt safety-inference-medical_system-v1-strict --model gemini-2.5-pro

CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_male_sad --prompt safety-inference-medical_system-v1 --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_male_sad --prompt safety-inference-medical_system-v1-loose --model gemini-2.5-pro
CUDA_VISIBLE_DEVICES=4 HF_HOME=./checkpoints python main.py --dataset safety_medical_system_male_sad --prompt safety-inference-medical_system-v1-strict --model gemini-2.5-pro
