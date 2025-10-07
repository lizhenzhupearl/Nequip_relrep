#!/bin/bash

source /opt/anaconda/etc/profile.d/conda.sh
conda activate nequip
timestamp=$(date "+%Y-%m-%d_%H-%M-%S")
#CUDA_VISIBLE_DEVICES=4,7 nequip-train -cn nequip_mtrj_sean.yaml
nohup bash -c "CUDA_VISIBLE_DEVICES=4,7 nequip-train -cn nequip_mtrj.yaml" > train.$timestamp.log 2>&1 &
