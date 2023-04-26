#!/bin/bash
#SBATCH --output=log.txt 
#SBATCH --array=1-50
#SBATCH -p production 
#SBATCH --time=1000
#SBATCH --mem=2G
Rosetta/main/source/bin/rosetta_scripts.default.linuxgccrelease -database Rosetta/main/database @flags -out:pdb_gz -user_tag $SLURM_ARRAY_TASK_ID -out:suffix $SLURM_ARRAY_TASK_ID 
