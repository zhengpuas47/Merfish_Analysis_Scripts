#!/bin/bash
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -p zhuang
#SBATCH -t 2-00:00:00
#SBATCH --mem 16000
#SBATCH --open-mode=append
#SBATCH -o /n/holyscratch01/zhuang_lab/Users/pzheng/MERFISH_Analysis/Logs/Merlin_jobs/%j.stdout
#SBATCH -e /n/holyscratch01/zhuang_lab/Users/pzheng/MERFISH_Analysis/Logs/Merlin_jobs/%j.stdout

date +'Starting at %R.'

#choose_the_correct_conda
. "/n/home13/pzheng/anaconda3/etc/profile.d/conda.sh"
export PATH="/n/home13/pzheng/anaconda3/bin:$PATH"
#change_to_merlin_environment
conda activate merlin_env

merlin -a 20221025-hM1_cellpose.json \
		-o 20221025-hM1_22bits_adaptors.csv \
		-c human_M1_codebook.csv \
		-m storm6_microscope.json \
		-p 20221026_positions.txt \
		-e /n/holyscratch01/zhuang_lab/Users/pzheng/MERFISH_Data \
		-s /n/holyscratch01/zhuang_lab/Users/pzheng/MERFISH_Analysis \
		-k run_hM1_cellpose.json \
		-n 2 \
		--no_report True \
		20221026-hM1_hM1
#NOTES:
#analysis_parameter
#data_organization_file
#codebook_file
#miscrope_setting_file
#recorded_position_file
#Data_HOME
#ANALYSIS_HOME
#Snakemake_parameter
#number_of_cores
#other_options
#data_folder

date +'Finished at %R.'
