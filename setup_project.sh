#!/bin/bash

# Set the project directory
PROJECT_DIR="ai-model-sample"
cd ~/$PROJECT_DIR || exit

# Create core directories
mkdir -p model data notebooks scripts logs config

# Create placeholder files
touch README.md requirements.txt .gitignore

# Add a sample Python script for training
cat <<EOL > scripts/train.py
import torch
from transformers import AutoModel, AutoTokenizer

def main():
    print("Starting model training...")
    tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
    model = AutoModel.from_pretrained("bert-base-uncased")
    print("Model and tokenizer loaded successfully.")
    
    # Add training logic here
    print("Training complete.")

if __name__ == "__main__":
    main()
EOL

# Add a sample notebook placeholder
echo "# Experiment Notebook" > notebooks/experiment.ipynb

# Add a basic requirements.txt
cat <<EOL > requirements.txt
torch>=2.0.0
transformers>=4.0.0
numpy
EOL

# Create a basic .gitignore file
cat <<EOL > .gitignore
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*.pyo

# Virtual environments
venv/
env/

# Jupyter Notebook checkpoints
.ipynb_checkpoints/

# Logs and temp files
logs/
*.log
*.tmp

# Data
data/
EOL

# Update the README.md file
cat <<EOL > README.md
# AI Model Sample

This project is a step-by-step learning experience for building, training, and deploying AI models.

## Project Structure

- **model/**: Pre-trained and fine-tuned models.
- **data/**: Datasets for training and testing.
- **notebooks/**: Jupyter notebooks for experimentation.
- **scripts/**: Python scripts for training and evaluation.
- **logs/**: Logs for training and debugging.
- **config/**: Configuration files in YAML or JSON.

## Getting Started

### Prerequisites

- Python 3.10 or higher
- Virtual environment setup: \`python3 -m venv venv\`

### Installation

```bash
source venv/bin/activate
pip install -r requirements.txt
