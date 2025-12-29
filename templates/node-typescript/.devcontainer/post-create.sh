#!/bin/bash
set -e

echo "🚀 Setting up Node.js + TypeScript environment..."

# Install pnpm if not available
if ! command -v pnpm &> /dev/null; then
    echo "📦 Installing pnpm..."
    npm install -g pnpm
fi

# Install dependencies if package.json exists
if [ -f "package.json" ]; then
    echo "📦 Installing dependencies..."
    pnpm install
fi

# Setup git hooks if husky is in package.json
if grep -q "husky" package.json 2>/dev/null; then
    echo "🪝 Setting up Git hooks..."
    pnpm exec husky install
fi

echo "✅ Setup complete! Happy coding!"
