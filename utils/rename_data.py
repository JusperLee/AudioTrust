import os

def rename_pool_to_poor(base_dir="data/shencan_fairness/economic status/decision"):
    for root, dirs, files in os.walk(base_dir):
        if root.count(os.sep) - base_dir.count(os.sep) == 1:
            pool_path = os.path.join(root, "pool.wav")
            poor_path = os.path.join(root, "poor.wav")

            if "pool.wav" in files:
                if "poor.wav" in files:
                    print(f"[冲突] 路径 {os.path.relpath(root, base_dir)} 同时存在 pool.wav 和 poor.wav，跳过重命名")
                else:
                    os.rename(pool_path, poor_path)
                    print(f"[已重命名] {pool_path} → {poor_path}")

if __name__ == "__main__":
    rename_pool_to_poor()
