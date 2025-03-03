# SAPT

> The official implementation for the ACL 2024 paper *SAPT: A Shared Attention Framework for Parameter-Efficient Continual Learning of Large Language Models*.

<img src="https://img.shields.io/badge/Venue-ACL--24-278ea5" alt="venue"/> <img src="https://img.shields.io/badge/Status-Accepted-success" alt="status"/> <img src="https://img.shields.io/badge/Issues-Welcome-red">

## Requirements
```
conda install pytorch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 pytorch-cuda=12.1 -c pytorch -c nvidia
pip install accelerate -U
pip install 'numpy<2' transformers==4.30.2 dataset==1.6.2 datasets==2.14.6 nltk==3.8.1 loralib==0.1.2 absl-py==2.0.0
```
* Python 3.10.12
* PyTorch 2.1.0
* Transformers 4.30.2
* datasets
* CUDA 12.2

## Preparation

The train/dev/test data from SuperNI and Long Sequence Benchmark is placed in `/CL_Benchmark`.

And the generated pseudo data points are in `/generated_data`.

## Training

First run `gen_script_{benchmark}_{model}.py` to obtain the training script.

For example, to implement T5 model on the SuperNI benchmark:

```sh
python gen_script_superni_t5.py
```

Then run the resulting script to start the training process.

## Evaluation

To calculate metrics of Average Performance (AP), Forgetting Rate (F.Ra), Forward Transfer (FWT) and Backward Transfer (BWT):

```sh
python score.py your_result_path single_result_path 
```

## Citation
If you find our work useful for your research, please kindly cite our paper as follows:
```
@inproceedings{zhao2024sapt,
  title={Sapt: A shared attention framework for parameter-efficient continual learning of large language models},
  author={Zhao, Weixiang and Wang, Shilong and Hu, Yulin and Zhao, Yanyan and Qin, Bing and Zhang, Xuanyu and Yang, Qing and Xu, Dongliang and Che, Wanxiang},
  booktitle={Proceedings of the 62nd Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers)},
  pages={11641--11661},
  year={2024}
}
```

## Credits
The code of this repository partly relies on [O-LoRA](https://github.com/cmnfriend/O-LoRA) and I would like to show my sincere gratitude to authors of it.
