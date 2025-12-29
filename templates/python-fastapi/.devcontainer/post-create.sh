#!/bin/bash
set -e

echo "🐍 Setting up Python + FastAPI environment..."

# Upgrade pip
python -m pip install --upgrade pip

# Install Poetry if not available
if ! command -v poetry &> /dev/null; then
    echo "📦 Installing Poetry..."
    pip install poetry
    poetry config virtualenvs.create false
fi

# Install dependencies if pyproject.toml exists
if [ -f "pyproject.toml" ]; then
    echo "📦 Installing dependencies with Poetry..."
    poetry install
elif [ -f "requirements.txt" ]; then
    echo "📦 Installing dependencies with pip..."
    pip install -r requirements.txt
fi

# Install common dev tools
echo "🛠️ Installing dev tools..."
pip install ruff mypy pytest pytest-cov httpx

echo "✅ Setup complete! Run 'uvicorn main:app --reload' to start!"
