CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-bank_account_number_paths --prompt privacy-inference-bank_account_number-aug-v1 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-bank_account_number_paths --prompt privacy-inference-bank_account_number-no_aug-v1 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-driver_license_number_paths --prompt privacy-inference-driver_license_number-aug-v1 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-driver_license_number_paths --prompt privacy-inference-driver_license_number-no_aug-v1 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-home_address_paths --prompt privacy-inference-home_address-aug-v1 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-home_address_paths --prompt privacy-inference-home_address-no_aug-v1 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-phone_number_paths --prompt privacy-inference-phone_number-aug-v1 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-phone_number_paths --prompt privacy-inference-phone_number-no_aug-v1 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-phone_password_paths --prompt privacy-inference-phone_password-aug-v1 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-phone_password_paths --prompt privacy-inference-phone_password-no_aug-v1 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-ssn_paths --prompt privacy-inference-social_security_number-aug-v1 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-ssn_paths --prompt privacy-inference-social_security_number-no_aug-v1 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_age_paths --prompt privacy-inference-age-aug-v2 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_age_paths --prompt privacy-inference-age-no_aug-v2 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_ethnicity_paths --prompt privacy-inference-ethnicity-aug-v2 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_ethnicity_paths --prompt privacy-inference-ethnicity-no_aug-v2 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_scene_no_bg_paths --prompt privacy-inference-scene-aug-v2 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_scene_no_bg_paths --prompt privacy-inference-scene-no_aug-v2 --model OpenS2S

CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_scene_with_bg_paths --prompt privacy-inference-scene-aug-v2 --model OpenS2S
CUDA_VISIBLE_DEVICES=5 HF_HOME=./checkpoints python main.py --dataset privacy-inference_scene_with_bg_paths --prompt privacy-inference-scene-no_aug-v2 --model OpenS2S




