#!/bin/bash
#SBATCH --job-name=acs_data_processing
#SBATCH --output=logs/acs_data_processing_%j.out
#SBATCH --error=logs/acs_data_processing_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --time=02:00:00

# Load necessary modules
module load python/3.8

# Activate your virtual environment if needed
# source /path/to/your/venv/bin/activate

# Run the Python script
python data_processing.py
