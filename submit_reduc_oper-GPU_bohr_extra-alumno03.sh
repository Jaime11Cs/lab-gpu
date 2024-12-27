#!/bin/bash
#SBATCH --job-name=reduc_oper_GPU
#SBATCH --output=reduc_oper_extra_output_%j.out
#SBATCH --time=01:00:00
#SBATCH --partition=bohr-gpu
#SBATCH --cpus-per-task=4
#SBATCH --ntasks=1
#SBATCH --mem=8G

#Cargar el módulo Anaconda
module load anaconda/2023.03

#Variables
NOTEBOOK="reduc-operation-extra-alumno03.ipynb"

#Ejecutar el notebook con  5*10**8
echo "Ejecutando el notebook con 5*10**8 elementos"
ipython $NOTEBOOK $((5*10**8))

#Quitando los módulos
module unload anaconda/2023.03

