#!/bin/bash
#SBATCH -p hpc-bio-pascal
#SBATCH --chdir=/home/alumno03/lab-gpu
#SBATCH --cpus-per-task=1
#SBATCH --output=/home/alumno03/lab-gpu/slurm-%j.out

#Cargar el módulo Anaconda
module load anaconda/2023.03

#Variables
NOTEBOOK="reduc-operation-array_par-alumno03.ipynb"

#Ejecutar el notebook con 10**7 elementos
echo "Ejecutando el notebook con 5*10**7 elementos"
ipython $NOTEBOOK $((5*10**7))

echo "Ejecución completada"