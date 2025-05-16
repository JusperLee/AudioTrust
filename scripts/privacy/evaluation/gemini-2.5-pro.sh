export OPENAI_API_KEY=xxxxx


python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-bank_account_number_paths/privacy-inference-bank_account_number-aug-v1.jsonl data/privacy/bank_account_number_paths.jsonl
python main.py --dataset privacy-bank_account_number_paths --prompt privacy-evaluate-bank_account_number-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-bank_account_number_paths/privacy-inference-bank_account_number-no_aug-v1.jsonl data/privacy/bank_account_number_paths.jsonl
python main.py --dataset privacy-bank_account_number_paths --prompt privacy-evaluate-bank_account_number-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-driver_license_number_paths/privacy-inference-driver_license_number-aug-v1.jsonl data/privacy/driver_license_number_paths.jsonl
python main.py --dataset privacy-driver_license_number_paths --prompt privacy-evaluate-driver_license_number-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-driver_license_number_paths/privacy-inference-driver_license_number-no_aug-v1.jsonl data/privacy/driver_license_number_paths.jsonl
python main.py --dataset privacy-driver_license_number_paths --prompt privacy-evaluate-driver_license_number-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-home_address_paths/privacy-inference-home_address-aug-v1.jsonl data/privacy/home_address_paths.jsonl
python main.py --dataset privacy-home_address_paths --prompt privacy-evaluate-home_address-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-home_address_paths/privacy-inference-home_address-no_aug-v1.jsonl data/privacy/home_address_paths.jsonl
python main.py --dataset privacy-home_address_paths --prompt privacy-evaluate-home_address-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-phone_number_paths/privacy-inference-phone_number-aug-v1.jsonl data/privacy/phone_number_paths.jsonl
python main.py --dataset privacy-phone_number_paths --prompt privacy-evaluate-phone_number-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-phone_number_paths/privacy-inference-phone_number-no_aug-v1.jsonl data/privacy/phone_number_paths.jsonl
python main.py --dataset privacy-phone_number_paths --prompt privacy-evaluate-phone_number-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-phone_password_paths/privacy-inference-phone_password-aug-v1.jsonl data/privacy/phone_password_paths.jsonl
python main.py --dataset privacy-phone_password_paths --prompt privacy-evaluate-phone_password-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-phone_password_paths/privacy-inference-phone_password-no_aug-v1.jsonl data/privacy/phone_password_paths.jsonl
python main.py --dataset privacy-phone_password_paths --prompt privacy-evaluate-phone_password-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-ssn_paths/privacy-inference-social_security_number-aug-v1.jsonl data/privacy/ssn_paths.jsonl
python main.py --dataset privacy-ssn_paths --prompt privacy-evaluate-social_security_number-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-ssn_paths/privacy-inference-social_security_number-no_aug-v1.jsonl data/privacy/ssn_paths.jsonl
python main.py --dataset privacy-ssn_paths --prompt privacy-evaluate-social_security_number-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_age_paths/privacy-inference-age-aug-v2.jsonl data/privacy/inference_age_paths.jsonl
python main.py --dataset privacy-inference_age_paths --prompt privacy-evaluate-age-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_age_paths/privacy-inference-age-no_aug-v2.jsonl data/privacy/inference_age_paths.jsonl
python main.py --dataset privacy-inference_age_paths --prompt privacy-evaluate-age-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_ethnicity_paths/privacy-inference-ethnicity-aug-v2.jsonl data/privacy/inference_ethnicity_paths.jsonl
python main.py --dataset privacy-inference_ethnicity_paths --prompt privacy-evaluate-ethnicity-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_ethnicity_paths/privacy-inference-ethnicity-no_aug-v2.jsonl data/privacy/inference_ethnicity_paths.jsonl
python main.py --dataset privacy-inference_ethnicity_paths --prompt privacy-evaluate-ethnicity-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_scene_no_bg_paths/privacy-inference-scene-aug-v2.jsonl data/privacy/inference_scene_no_bg_paths.jsonl
python main.py --dataset privacy-inference_scene_no_bg_paths --prompt privacy-evaluate-scene-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_scene_no_bg_paths/privacy-inference-scene-no_aug-v2.jsonl data/privacy/inference_scene_no_bg_paths.jsonl
python main.py --dataset privacy-inference_scene_no_bg_paths --prompt privacy-evaluate-scene-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_scene_with_bg_paths/privacy-inference-scene-aug-v2.jsonl data/privacy/inference_scene_with_bg_paths.jsonl
python main.py --dataset privacy-inference_scene_with_bg_paths --prompt privacy-evaluate-scene-no_aug-v2 --model gpt-4o

python utils/inference2evaluation.py res/gemini-2.5-pro/privacy-inference_scene_with_bg_paths/privacy-inference-scene-no_aug-v2.jsonl data/privacy/inference_scene_with_bg_paths.jsonl
python main.py --dataset privacy-inference_scene_with_bg_paths --prompt privacy-evaluate-scene-v2 --model gpt-4o