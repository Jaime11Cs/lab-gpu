#!/bin/bash
#SBATCH --job-name=reduc_oper_GPU
#SBATCH --output=reduc_oper_output_%j.out
#SBATCH --error=reduc_oper_error_%j.err
#SBATCH --time=01:00:00
#SBATCH --partition=bohr-gpu
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH --mem=8G

#Cargar el módulo Anaconda
module load anaconda/2023.03
#Cargar CUDA
module load cuda/12.3
#Variables
NOTEBOOK="reduc-operation-array_gpu-alumno03.ipynb"

#Ejecutar el notebook con 5*10**6 elementos
echo "Ejecutando el notebook con 5*10**6 elementos"
ipython $NOTEBOOK $((5*10**6))

#Ejecutar el notebook con 5*10**7 elementos
echo "Ejecutando el notebook con 5*10**7 elementos"
ipython $NOTEBOOK $((5*10**7))

#Ejecutar el notebook con  5*10**8
echo "Ejecutando el notebook con 5*10**8 elementos"
ipython $NOTEBOOK $((5*10**8))

#Quitando los módulos
module unload anaconda/2023.03
module unload cuda/12.3
