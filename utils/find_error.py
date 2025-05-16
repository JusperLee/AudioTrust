from glob import glob
import json
from natsort import natsorted

jsonl_files = glob("res/gemini-2.5-flash/*/*-overall.json")
jsonl_files = natsorted(jsonl_files)
for filename in jsonl_files:
    with open(filename,mode="r") as f:
        content = f.read()
    # content = json.loads(content)
    # if content["fail_rate(%d)"] != 0.0:
    #     print(filename)
    print(content, filename)
