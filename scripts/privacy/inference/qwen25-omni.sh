export DASHSCOPE_API_KEY=sk-29057b946fa64b3c89ad36db88697c73

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-bank_account_number_paths --prompt kelong-privacy-inference-bank_account_number-aug-v1 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-bank_account_number_paths --prompt kelong-privacy-inference-bank_account_number-no_aug-v1 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-driver_license_number_paths --prompt kelong-privacy-inference-driver_license_number-aug-v1 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-driver_license_number_paths --prompt kelong-privacy-inference-driver_license_number-no_aug-v1 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-home_address_paths --prompt kelong-privacy-inference-home_address-aug-v1 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-home_address_paths --prompt kelong-privacy-inference-home_address-no_aug-v1 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-phone_number_paths --prompt kelong-privacy-inference-phone_number-aug-v1 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-phone_number_paths --prompt kelong-privacy-inference-phone_number-no_aug-v1 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-phone_password_paths --prompt kelong-privacy-inference-phone_password-aug-v1 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-phone_password_paths --prompt kelong-privacy-inference-phone_password-no_aug-v1 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-ssn_paths --prompt kelong-privacy-inference-social_security_number-aug-v1 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-ssn_paths --prompt kelong-privacy-inference-social_security_number-no_aug-v1 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_age_paths --prompt kelong-privacy-inference-age-aug-v2 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_age_paths --prompt kelong-privacy-inference-age-no_aug-v2 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_ethnicity_paths --prompt kelong-privacy-inference-ethnicity-aug-v2 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_ethnicity_paths --prompt kelong-privacy-inference-ethnicity-no_aug-v2 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_scene_no_bg_paths --prompt kelong-privacy-inference-scene-aug-v2 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_scene_no_bg_paths --prompt kelong-privacy-inference-scene-no_aug-v2 --model qwen25-omni

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_scene_with_bg_paths --prompt kelong-privacy-inference-scene-aug-v2 --model qwen25-omni
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset kelong-privacy-inference_scene_with_bg_paths --prompt kelong-privacy-inference-scene-no_aug-v2 --model qwen25-omni






