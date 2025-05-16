export OPENAI_API_KEY=xxxxx


# ========== content_mismatc ==========
python utils/inference2evaluation.py res/gpt-4o-audio/halucination-content_mismatc/halucination-inference-content-mismatchs-exp1-v1.jsonl data/halucination/content_mismatc.jsonl
python main.py --dataset halucination-content_mismatc --prompt halucination-evaluation-content-mismatch-exp1-v1 --model gpt-4o

python utils/inference2evaluation.py res/gpt-4o-audio/halucination-content_mismatc/halucination-inference-content-mismatchs-exp2-v1.jsonl data/halucination/content_mismatc.jsonl
python main.py --dataset halucination-content_mismatc --prompt halucination-evaluation-content-mismatch-exp2-v1 --model gpt-4o

python utils/inference2evaluation.py res/gpt-4o-audio/halucination-content_mismatc/halucination-inference-content-mismatchs-exp3-v1.jsonl data/halucination/content_mismatc.jsonl
python main.py --dataset halucination-content_mismatc --prompt halucination-evaluation-exp3-v1 --model gpt-4o

# ========== label_mismatch ==========
python utils/inference2evaluation.py res/gpt-4o-audio/halucination-label_mismatch/halucination-inference-label-mismatch-exp1-v1.jsonl data/halucination/label_mismatch.jsonl
python main.py --dataset halucination-label_mismatch --prompt halucination-evaluation-label-mismatch-exp1-v1 --model gpt-4o

python utils/inference2evaluation.py res/gpt-4o-audio/halucination-label_mismatch/halucination-inference-label-mismatch-exp2-v1.jsonl data/halucination/label_mismatch.jsonl
python main.py --dataset halucination-label_mismatch --prompt halucination-evaluation-label-mismatch-exp2-v1 --model gpt-4o

python utils/inference2evaluation.py res/gpt-4o-audio/halucination-label_mismatch/halucination-inference-label-mismatch-exp3-v1.jsonl data/halucination/label_mismatch.jsonl
python main.py --dataset halucination-label_mismatch --prompt halucination-evaluation-exp3-v1 --model gpt-4o

# ========== logical_violation ==========
python utils/inference2evaluation.py res/gpt-4o-audio/halucination-logical_violation/halucination-inference-logical-violation-exp1-v1.jsonl data/halucination/logical_violation.jsonl
python main.py --dataset halucination-logical_violation --prompt halucination-evaluation-logical-violation-exp1-v1 --model gpt-4o

python utils/inference2evaluation.py res/gpt-4o-audio/halucination-logical_violation/halucination-inference-logical-violation-exp3-v1.jsonl data/halucination/logical_violation.jsonl
python main.py --dataset halucination-logical_violation --prompt halucination-evaluation-exp3-v1 --model gpt-4o

# ========== physical_violation ==========
python utils/inference2evaluation.py res/gpt-4o-audio/halucination-physical_violation/halucination-inference-physical-violation-exp1-v1.jsonl data/halucination/physical_violation.jsonl
python main.py --dataset halucination-physical_violation --prompt halucination-evaluation-physical-violation-exp1-v1 --model gpt-4o

python utils/inference2evaluation.py res/gpt-4o-audio/halucination-physical_violation/halucination-inference-physical-violation-exp2-v1.jsonl data/halucination/physical_violation.jsonl
python main.py --dataset halucination-physical_violation --prompt halucination-evaluation-physical-violation-exp2-v1 --model gpt-4o

python utils/inference2evaluation.py res/gpt-4o-audio/halucination-physical_violation/halucination-inference-physical-violation-exp3-v1.jsonl data/halucination/physical_violation.jsonl
python main.py --dataset halucination-physical_violation --prompt halucination-evaluation-exp3-v1 --model gpt-4o

