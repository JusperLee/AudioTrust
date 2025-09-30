# content_mismatc
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-content_mismatc --prompt halucination-inference-content-mismatchs-exp1-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-content_mismatc --prompt halucination-inference-content-mismatchs-exp2-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-content_mismatc --prompt halucination-inference-content-mismatchs-exp3-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-content_mismatc --prompt halucination-evaluation-content-mismatch-exp1-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-content_mismatc --prompt halucination-evaluation-content-mismatch-exp2-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-content_mismatc --proassetsmpt halucination-evaluation-exp3-v1 --model kimi-audio


# label_mismatch
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-label_mismatch --prompt halucination-inference-label-mismatch-exp1-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-label_mismatch --prompt halucination-inference-label-mismatch-exp2-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-label_mismatch --prompt halucination-inference-label-mismatch-exp3-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-label_mismatch --prompt halucination-evaluation-label-mismatch-exp1-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-label_mismatch --prompt halucination-evaluation-label-mismatch-exp2-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-label_mismatch --prompt halucination-evaluation-exp3-v1 --model kimi-audio

# logical_violation
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-logical_violation --prompt halucination-inference-logical-violation-exp1-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-logical_violation --prompt halucination-inference-logical-violation-exp3-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-logical_violation-exp4-wer --prompt halucination-inference-logical-violation-exp4-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-logical_violation --prompt halucination-evaluation-logical-violation-exp1-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-logical_violation --prompt halucination-evaluation-exp3-v1 --model kimi-audio
# exp4: wer

# physical_violation
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-physical_violation --prompt halucination-inference-physical-violation-exp1-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-physical_violation --prompt halucination-inference-physical-violation-exp2-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-physical_violation --prompt halucination-inference-physical-violation-exp3-v1 --model kimi-audio
CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-physical_violation-exp4-wer --prompt halucination-inference-physical-violation-exp4-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-physical_violation --prompt halucination-evaluation-physical-violation-exp1-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-physical_violation --prompt halucination-evaluation-physical-violation-exp2-v1 --model kimi-audio
# CUDA_VISIBLE_DEVICES=6 HF_HOME=./checkpoints python main.py --dataset halucination-physical_violation --prompt halucination-evaluation-exp3-v1 --model kimi-audio
# exp4: wer