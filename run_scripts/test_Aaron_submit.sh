#!/bin/bash
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -p zhuang
#SBATCH -t 2-00:00:00
#SBATCH --mem 16000
#SBATCH --open-mode=append
#SBATCH -o /n/home01/xingjiepan/merlin/job_stdoe/%j.stdout.txt
#SBATCH -e /n/home01/xingjiepan/merlin/job_stdoe/%j.stdout.txt

date +'Starting at %R.'

. "/n/home01/xingjiepan/Softwares/conda/anaconda3/etc/profile.d/conda.sh"
export PATH="/n/home01/xingjiepan/Softwares/conda/anaconda3/bin:$PATH"
conda activate merlin_env

merlin -a test_Aaron_210427_WB2_B5_B13_subset_4x4_analysis.json \
		-o test_Aaron_WB2_32bit_data_organization_unexpanded_merfish6.csv \
		-c test_Aaron_WB2_32bit_codebook.csv \
		-m test_Aaron_MERFISH6.json \
		-p test_Aaron_210427_WB2_B5_B13_subset_4x4_positions.txt \
		-e /n/holyscratch01/zhuang_lab/xingjiepan/merfish_data \
		-s /n/holyscratch01/zhuang_lab/xingjiepan/merfish_analysis \
		-k test_Aaron_210427_WB2_B5_B13_subset_snake.json \
		-n 2 \
		--no_report True \
		test_Aaron_210427_WB2_B5_B13_subset_4x4

date +'Finished at %R.'
