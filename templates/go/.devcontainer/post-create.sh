#!/bin/bash
set -e

echo "🔵 Setting up Go environment..."

# Install commonly used tools
echo "🛠️ Installing Go tools..."
go install github.com/cosmtrek/air@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install github.com/go-delve/delve/cmd/dlv@latest

# Download dependencies if go.mod exists
if [ -f "go.mod" ]; then
    echo "📦 Downloading dependencies..."
    go mod download
fi

echo "✅ Setup complete! Run 'air' for hot reload or 'go run .' to start!"
