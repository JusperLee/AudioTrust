import torchaudio
import torch
from tqdm import tqdm
import torchaudio.functional as F
from glob import glob
import os



def concat_audio(filename1, filename2, save_path):
    # 加载两个音频文件
    waveform1, sample_rate1 = torchaudio.load(filename1)
    waveform2, sample_rate2 = torchaudio.load(filename2)

    # 如果采样率不一致，重采样 waveform2
    if sample_rate1 != sample_rate2:
        waveform2 = F.resample(waveform2, sample_rate2, sample_rate1)
        sample_rate2 = sample_rate1

    # 如果声道数不一致，调整 waveform2
    channels1 = waveform1.shape[0]
    channels2 = waveform2.shape[0]

    if channels1 != channels2:
        if channels2 < channels1:
            # waveform2 声道数少，复制声道
            waveform2 = waveform2.repeat(channels1 // channels2, 1)
        else:
            # waveform2 声道数多，取前 channels1 个声道
            waveform2 = waveform2[:channels1, :]

    # 拼接两个音频（按时间维度）
    combined = torch.cat((waveform1, waveform2), dim=1)

    # 保存合并后的音频
    torchaudio.save(save_path, combined, sample_rate1)


dirs = glob("data/shencan_fairness/*/decision/*")

for dir in tqdm(dirs):
    child_files = os.listdir(dir)

    assert len(child_files) ==2, f"{dir} need 2 wav file, but actually is {len(child_files)}"


    basename1 = child_files[0].split(".")[0]
    basename2 = child_files[1].split(".")[0]
    basename = basename1 + "_" + basename2 + ".wav"
    save_path = os.path.join(dir, basename)

    filename1 = os.path.join(dir, child_files[0])
    filename2 = os.path.join(dir, child_files[1])
    concat_audio(filename1, filename2, save_path)

    