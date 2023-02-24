#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_spades_assembly_19
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=2
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=94G

conda activate phyluce-1.7.1

phyluce_assembly_assemblo_spades --config assembly_19.conf --output ./spades_assemblies/19 --cores 2 --memory 188 --log-path assembly_19_log
