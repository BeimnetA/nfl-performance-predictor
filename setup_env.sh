#!/bin/bash

# Exit immediately if a command fails
set -e

echo "🔄 Setting up Python virtual environment..."

# Remove old environment if it exists
if [ -d "env" ]; then
    echo "🧹 Removing old env folder..."
    rm -rf env
fi

# Create a new environment
python3 -m venv env
source env/bin/activate

echo "✅ Virtual environment created and activated."

# Upgrade pip and install core libraries
echo "📦 Installing required packages..."
pip install --upgrade pip
pip install pandas numpy matplotlib seaborn scikit-learn jupyter

echo "Setup complete!"
echo "To activate later, run: source env/bin/activate"

# To run in terminal
# 1. chmod +x setup_env.sh
# 2. ./setup_env.sh