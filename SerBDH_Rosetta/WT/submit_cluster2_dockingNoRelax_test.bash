#!/bin/bash
#SBATCH --job-name=BDHWT
#SBATCH --output=BDHWT_NMN.txt 
#SBATCH --array=1-100
#SBATCH -p production 
#SBATCH --time=500
#SBATCH --mem=2G
Rosetta/main/source/bin/rosetta_scripts.default.linuxgccrelease -database Rosetta/main/database @enzflags_parser -overwrite  -parser:protocol docking.xml -out:path:all ./result -user_tag $SLURM_ARRAY_TASK_ID -out:suffix $SLURM_ARRAY_TASK_ID 
