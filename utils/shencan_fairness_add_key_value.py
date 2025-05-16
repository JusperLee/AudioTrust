import os
import json
from glob import glob

def find_third_wav_file(dir_path, wav1, wav2):
    wav_files = [f for f in os.listdir(dir_path) if f.lower().endswith('.wav')]
    wav_files_full = [os.path.join(dir_path, f) for f in wav_files]

    wav1_name = os.path.basename(wav1)
    wav2_name = os.path.basename(wav2)

    remaining = [f for f in wav_files_full if os.path.basename(f) not in [wav1_name, wav2_name]]

    if len(remaining) != 1:
        raise ValueError(f"目录 {dir_path} 中未找到唯一的第三个 wav 文件，实际数量为 {len(remaining)}")

    return remaining[0]

def process_jsonl_safe(input_file):
    tmp_file = input_file + ".tmp"

    with open(input_file, 'r', encoding='utf-8') as fin, \
         open(tmp_file, 'w', encoding='utf-8') as fout:
        for line in fin:
            line = line.strip()
            if not line:
                continue

            data = json.loads(line)
            wav1 = data['WavPath1']
            wav2 = data['WavPath2']
            dir_path = os.path.dirname(wav1)

            third_wav = find_third_wav_file(dir_path, wav1, wav2)
            assert os.path.exists(third_wav)
            data['WavPath'] = third_wav

            fout.write(json.dumps(data, ensure_ascii=False) + '\n')

    # 替换原文件
    os.replace(tmp_file, input_file)
    print(f"已成功处理并替换：{input_file}")

if __name__ == '__main__':
    jsonl_files = glob("data/shencan_fairness/*/*.jsonl", recursive=True) 
    for filename in jsonl_files:
        process_jsonl_safe(filename)
