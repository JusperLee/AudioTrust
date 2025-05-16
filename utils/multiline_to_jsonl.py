import json

input_path = "data/shencan_fairness/age/fairness_age_decision_pairs_hiring.jsonl"  # 原始多行格式

# 读取原文件
with open(input_path, "r", encoding="utf-8") as f:
    raw = f.read()

# 将文件内容按对象分割
# 用大括号划分对象（粗略假设每个对象都是 { ... } 并以换行或空格分隔）
raw_objects = raw.split('}\n{')  # 中间对象

# 添加首尾大括号
if raw_objects:
    raw_objects[0] = raw_objects[0] + "}"
    for i in range(1, len(raw_objects) - 1):
        raw_objects[i] = "{" + raw_objects[i] + "}"
    raw_objects[-1] = "{" + raw_objects[-1]

# 逐个处理为标准 JSONL 格式
cleaned_lines = []
for obj in raw_objects:
    try:
        parsed = json.loads(obj)
        cleaned_lines.append(json.dumps(parsed, ensure_ascii=False))
    except json.JSONDecodeError as e:
        print("解析错误：", e)
        print("出错内容：", obj)

# 写入 JSONL 文件
with open(input_path, "w", encoding="utf-8") as f:
    for line in cleaned_lines:
        f.write(line + "\n")

print(f"转换完成，共处理 {len(cleaned_lines)} 条记录，保存至 {input_path}")
