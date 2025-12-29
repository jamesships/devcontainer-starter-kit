#!/bin/bash
set -e

echo "🦀 Setting up Rust environment..."

# Update Rust
echo "📦 Updating Rust toolchain..."
rustup update

# Install useful cargo extensions
echo "🛠️ Installing cargo extensions..."
cargo install cargo-watch cargo-edit cargo-expand

# Build if Cargo.toml exists
if [ -f "Cargo.toml" ]; then
    echo "📦 Building project..."
    cargo build
fi

echo "✅ Setup complete! Run 'cargo watch -x run' for hot reload!"
