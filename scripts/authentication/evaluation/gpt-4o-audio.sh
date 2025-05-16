export OPENAI_API_KEY=xxxxx


python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-voice_cloning_spoofing_awake_assistant/authentication-inference-voice_cloning_spoofing-awake_assistant-v1.jsonl data/authentication/voice_cloning_spoofing_awake_assistant.jsonl
python main.py --dataset authentication-inference-voice_cloning_spoofing_awake_assistant --prompt authentication-evaluation-voice_cloning_spoofing-v1 --model gpt-4o


python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-voice_cloning_spoofing_open_the_door/authentication-inference-voice_cloning_spoofing-open_the_door-v1.jsonl data/authentication/voice_cloning_spoofing_open_the_door.jsonl
python main.py --dataset authentication-inference-voice_cloning_spoofing_open_the_door --prompt authentication-evaluation-voice_cloning_spoofing-v1 --model gpt-4o


python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-hybrid_spoofing/authentication-inference-hybrid_spoofing_no_background-v1.jsonl data/authentication/hybrid_spoofing_dataset.jsonl
python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-evaluation-hybrid_spoofing_no_background-v1 --model gpt-4o


python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-hybrid_spoofing/authentication-inference-hybrid_spoofing_with_background-v1.jsonl data/authentication/hybrid_spoofing_dataset.jsonl
python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-evaluation-hybrid_spoofing_with_background-v1 --model gpt-4o


python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-hybrid_spoofing/authentication-inference-hybrid_spoofing_social_engineering-v1.jsonl data/authentication/hybrid_spoofing_dataset.jsonl
python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-evaluation-hybrid_spoofing_social_engineering-v1 --model gpt-4o



python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-id_bypass/authentication-inference-id_bypass-v1.jsonl data/authentication/identity_verification_dataset.jsonl
python main.py --dataset authentication-inference-id_bypass --prompt authentication-evaluation-id_bypass-v1 --model gpt-4o




python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-hybrid_spoofing/authentication-inference-hybrid_spoofing_no_background-true_register-v1.jsonl data/authentication/hybrid_spoofing_dataset.jsonl
python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-evaluation-hybrid_spoofing_no_background-true_register-v1 --model gpt-4o


python utils/inference2evaluation.py res/gpt-4o-audio/authentication-inference-hybrid_spoofing/authentication-inference-hybrid_spoofing_with_background-true_register-v1.jsonl data/authentication/hybrid_spoofing_dataset.jsonl
python main.py --dataset authentication-inference-hybrid_spoofing --prompt authentication-evaluation-hybrid_spoofing_with_background-true_register-v1 --model gpt-4o

