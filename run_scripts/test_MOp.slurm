#!/bin/bash
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -p zhuang
#SBATCH -t 2-00:00:00
#SBATCH --mem 16000
#SBATCH --open-mode=append
#SBATCH -o /n/holyscratch01/zhuang_lab/Users/pzheng/Analysis_results/Logs/job_stdoe_tmp/%j.stdout.txt
#SBATCH -e /n/holyscratch01/zhuang_lab/Users/pzheng/Analysis_results/Logs/job_stdoe_tmp/%j.stdout.txt

date +'Starting at %R.'

. "/n/home13/pzheng/anaconda3/etc/profile.d/conda.sh"
export PATH="/n/home13/pzheng/anaconda3/bin:$PATH"
conda activate merlin

merlin -a 20210717-MOp_short.json \
		-o M1_38bits.csv \
		-c M1_codebook.csv \
		-m storm6_microscope.json \
		-p positions_all.txt \
		-e /n/holyscratch01/zhuang_lab/Users/pzheng/MERFISH_Data \
		-s /n/holyscratch01/zhuang_lab/Users/pzheng/Analysis_results \
		-k test_MOp.json \
		-n 2 \
		--no_report True \
		20210717-P_brain_MO4_MERFISH_renamed_data_test

date +'Finished at %R.'
