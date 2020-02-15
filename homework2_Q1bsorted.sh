#!/bin/bash
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=1:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=MYJOB
#SBATCH --output=slurm_%j.out

for read in ./*.bam
do
  	samtools sort  $read > ${read::-4}.sorted.bam
done

