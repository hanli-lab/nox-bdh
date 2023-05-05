#!/bin/bash
#SBATCH --job-name=KpDar
#SBATCH --output=KpDar_NMN.txt 
#SBATCH --array=1-200
#SBATCH -p production 
#SBATCH --time=800
#SBATCH --mem=2G
Rosetta/main/source/bin/rosetta_scripts.default.linuxgccrelease -database Rosetta/main/database @flags -overwrite -parser:protocol docking.xml -out:path:all ./result -user_tag $SLURM_ARRAY_TASK_ID -out:suffix $SLURM_ARRAY_TASK_ID 
