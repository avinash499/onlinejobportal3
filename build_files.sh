# !/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Activate virtual environment (if applicable)
# source /path/to/your/venv/bin/activate

# Install dependencies
pip install -r requirements.txt || { echo "Failed to install dependencies."; exit 1; }

# Collect static files
python3.9 manage.py collectstatic --noinput || { echo "Failed to collect static files."; exit 1; }
