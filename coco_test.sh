#!/bin/bash

#SBATCH --job-name=coco_test
#SBATCH --partition=a5000
#SBATCH --gres=gpu:1
#SBATCH --time=0-06:00:00
#SBATCH --mem=16G
#SBATCH --cpus-per-task=4
#SBATCH --output=./slurm_log/S-%x.%j.out

ml purge
ml load cuda/11.3
eval "$(conda shell.bash hook)"
conda activate seg

srun jupyter notebook --no-browser --port=27165