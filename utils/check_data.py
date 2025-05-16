import os

def check_dataset_structure(base_dir="data/shencan_fairness/age/decision"):
    required_files = {"old.wav", "young.wav"}

    for root, dirs, files in os.walk(base_dir):
        # 只检查 decision/* 层级
        if root.count(os.sep) - base_dir.count(os.sep) == 1:
            rel_path = os.path.relpath(root, base_dir)
            actual_files = set(files)

            # 检查是否缺少必须的文件
            missing = required_files - actual_files
            if missing:
                print(f"[缺少文件] 路径 {rel_path} 缺少文件: {list(missing)}")

if __name__ == "__main__":
    check_dataset_structure()
