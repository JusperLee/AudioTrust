import json
import os
import sys
from pathlib import Path

def process_files(inference_file, dataset_file):
    # 读取推理结果文件
    with open(inference_file, 'r', encoding='utf-8') as f:
        inference_lines = f.readlines()
    
    # 读取数据集文件
    with open(dataset_file, 'r', encoding='utf-8') as f:
        dataset_lines = f.readlines()
    
    # 创建输出文件名
    output_file = Path(dataset_file).stem + '_with_responses.jsonl'
    
    # 提取推理结果
    inference_results = {}
    for line in inference_lines:
        try:
            data = json.loads(line)
            if data.get('type') == 'inference':
                inference_results[data['id']] = data['data']['content']
        except json.JSONDecodeError:
            continue
    
    # 处理数据集并添加模型响应
    with open(output_file, 'w', encoding='utf-8') as out_f:
        for line in dataset_lines:
            try:
                data = json.loads(line)
                # 假设数据集中的行顺序与推理结果中的id顺序一致
                # 或者可以通过其他方式匹配，这里需要根据实际情况调整
                # 这里简单假设行号对应id
                line_id = dataset_lines.index(line)
                if line_id in inference_results:
                    data['ModelResponse'] = inference_results[line_id]
                out_f.write(json.dumps(data, ensure_ascii=False) + '\n')
            except json.JSONDecodeError:
                continue
    os.rename(output_file, dataset_file)
    # print(f"处理完成，结果已保存到 {output_file}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("用法: python inference2evaluation.py <推理结果文件> <数据集文件>")
        sys.exit(1)
    
    inference_file = sys.argv[1]
    dataset_file = sys.argv[2]
    
    process_files(inference_file, dataset_file)