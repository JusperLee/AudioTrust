
##################### ENTERPRISE SYSTEM #####################

# female_angry
python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_female_angry/safety-inference-enterprise_system-v1.jsonl data/safety/enterprise_system_female_angry.jsonl
python main.py --dataset safety_enterprise_system_female_angry --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_female_angry/safety-inference-enterprise_system-v1-loose.jsonl data/safety/enterprise_system_female_angry.jsonl
python main.py --dataset safety_enterprise_system_female_angry --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_female_angry/safety-inference-enterprise_system-v1-strict.jsonl data/safety/enterprise_system_female_angry.jsonl
python main.py --dataset safety_enterprise_system_female_angry --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# female_sad
python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_female_sad/safety-inference-enterprise_system-v1.jsonl data/safety/enterprise_system_female_sad.jsonl
python main.py --dataset safety_enterprise_system_female_sad --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_female_sad/safety-inference-enterprise_system-v1-loose.jsonl data/safety/enterprise_system_female_sad.jsonl
python main.py --dataset safety_enterprise_system_female_sad --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_female_sad/safety-inference-enterprise_system-v1-strict.jsonl data/safety/enterprise_system_female_sad.jsonl
python main.py --dataset safety_enterprise_system_female_sad --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# male_angry
python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_male_angry/safety-inference-enterprise_system-v1.jsonl data/safety/enterprise_system_male_angry.jsonl
python main.py --dataset safety_enterprise_system_male_angry --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_male_angry/safety-inference-enterprise_system-v1-loose.jsonl data/safety/enterprise_system_male_angry.jsonl
python main.py --dataset safety_enterprise_system_male_angry --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_male_angry/safety-inference-enterprise_system-v1-strict.jsonl data/safety/enterprise_system_male_angry.jsonl
python main.py --dataset safety_enterprise_system_male_angry --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# male_sad
python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_male_sad/safety-inference-enterprise_system-v1.jsonl data/safety/enterprise_system_male_sad.jsonl
python main.py --dataset safety_enterprise_system_male_sad --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_male_sad/safety-inference-enterprise_system-v1-loose.jsonl data/safety/enterprise_system_male_sad.jsonl
python main.py --dataset safety_enterprise_system_male_sad --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_enterprise_system_male_sad/safety-inference-enterprise_system-v1-strict.jsonl data/safety/enterprise_system_male_sad.jsonl
python main.py --dataset safety_enterprise_system_male_sad --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

##################### FINANCIAL SYSTEM #####################

# female_angry
python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_female_angry/safety-inference-financial_system-v1.jsonl data/safety/financial_system_female_angry.jsonl
python main.py --dataset safety_financial_system_female_angry --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_female_angry/safety-inference-financial_system-v1-loose.jsonl data/safety/financial_system_female_angry.jsonl
python main.py --dataset safety_financial_system_female_angry --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_female_angry/safety-inference-financial_system-v1-strict.jsonl data/safety/financial_system_female_angry.jsonl
python main.py --dataset safety_financial_system_female_angry --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# female_sad
python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_female_sad/safety-inference-financial_system-v1.jsonl data/safety/financial_system_female_sad.jsonl
python main.py --dataset safety_financial_system_female_sad --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_female_sad/safety-inference-financial_system-v1-loose.jsonl data/safety/financial_system_female_sad.jsonl
python main.py --dataset safety_financial_system_female_sad --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_female_sad/safety-inference-financial_system-v1-strict.jsonl data/safety/financial_system_female_sad.jsonl
python main.py --dataset safety_financial_system_female_sad --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# male_angry
python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_male_angry/safety-inference-financial_system-v1.jsonl data/safety/financial_system_male_angry.jsonl
python main.py --dataset safety_financial_system_male_angry --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_male_angry/safety-inference-financial_system-v1-loose.jsonl data/safety/financial_system_male_angry.jsonl
python main.py --dataset safety_financial_system_male_angry --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_male_angry/safety-inference-financial_system-v1-strict.jsonl data/safety/financial_system_male_angry.jsonl
python main.py --dataset safety_financial_system_male_angry --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# male_sad
python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_male_sad/safety-inference-financial_system-v1.jsonl data/safety/financial_system_male_sad.jsonl
python main.py --dataset safety_financial_system_male_sad --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_male_sad/safety-inference-financial_system-v1-loose.jsonl data/safety/financial_system_male_sad.jsonl
python main.py --dataset safety_financial_system_male_sad --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_financial_system_male_sad/safety-inference-financial_system-v1-strict.jsonl data/safety/financial_system_male_sad.jsonl
python main.py --dataset safety_financial_system_male_sad --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

##################### MEDICAL SYSTEM #####################

# female_angry
python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_female_angry/safety-inference-medical_system-v1.jsonl data/safety/medical_system_female_angry.jsonl
python main.py --dataset safety_medical_system_female_angry --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_female_angry/safety-inference-medical_system-v1-loose.jsonl data/safety/medical_system_female_angry.jsonl
python main.py --dataset safety_medical_system_female_angry --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_female_angry/safety-inference-medical_system-v1-strict.jsonl data/safety/medical_system_female_angry.jsonl
python main.py --dataset safety_medical_system_female_angry --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# female_sad
python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_female_sad/safety-inference-medical_system-v1.jsonl data/safety/medical_system_female_sad.jsonl
python main.py --dataset safety_medical_system_female_sad --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_female_sad/safety-inference-medical_system-v1-loose.jsonl data/safety/medical_system_female_sad.jsonl
python main.py --dataset safety_medical_system_female_sad --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_female_sad/safety-inference-medical_system-v1-strict.jsonl data/safety/medical_system_female_sad.jsonl
python main.py --dataset safety_medical_system_female_sad --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# male_angry
python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_male_angry/safety-inference-medical_system-v1.jsonl data/safety/medical_system_male_angry.jsonl
python main.py --dataset safety_medical_system_male_angry --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_male_angry/safety-inference-medical_system-v1-loose.jsonl data/safety/medical_system_male_angry.jsonl
python main.py --dataset safety_medical_system_male_angry --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_male_angry/safety-inference-medical_system-v1-strict.jsonl data/safety/medical_system_male_angry.jsonl
python main.py --dataset safety_medical_system_male_angry --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni

# male_sad
python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_male_sad/safety-inference-medical_system-v1.jsonl data/safety/medical_system_male_sad.jsonl
python main.py --dataset safety_medical_system_male_sad --prompt safety-evaluation-jailbreak-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_male_sad/safety-inference-medical_system-v1-loose.jsonl data/safety/medical_system_male_sad.jsonl
python main.py --dataset safety_medical_system_male_sad --prompt safety-evaluation-jailbreak-v1-loose --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_medical_system_male_sad/safety-inference-medical_system-v1-strict.jsonl data/safety/medical_system_male_sad.jsonl
python main.py --dataset safety_medical_system_male_sad --prompt safety-evaluation-jailbreak-v1-strict --model gpt-4o-qwen25-omni


################# illegal activities guidance
python utils/inference2evaluation.py res/qwen25-omni/safety_illegal_activities_guidance_female_angry/safety-inference-illegal_activities_guidance-v1.jsonl data/safety/illegal_activities_guidance_female_angry.jsonl
python main.py --dataset safety_illegal_activities_guidance_female_angry --prompt safety-evaluation-illegal_activities_guidance-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_illegal_activities_guidance_female_sad/safety-inference-illegal_activities_guidance-v1.jsonl data/safety/illegal_activities_guidance_female_sad.jsonl
python main.py --dataset safety_illegal_activities_guidance_female_sad --prompt safety-evaluation-illegal_activities_guidance-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_illegal_activities_guidance_male_angry/safety-inference-illegal_activities_guidance-v1.jsonl data/safety/illegal_activities_guidance_male_angry.jsonl
python main.py --dataset safety_illegal_activities_guidance_male_angry --prompt safety-evaluation-illegal_activities_guidance-v1 --model gpt-4o-qwen25-omni

python utils/inference2evaluation.py res/qwen25-omni/safety_illegal_activities_guidance_male_sad/safety-inference-illegal_activities_guidance-v1.jsonl data/safety/illegal_activities_guidance_male_sad.jsonl
python main.py --dataset safety_illegal_activities_guidance_male_sad --prompt safety-evaluation-illegal_activities_guidance-v1 --model gpt-4o-qwen25-omni
#################