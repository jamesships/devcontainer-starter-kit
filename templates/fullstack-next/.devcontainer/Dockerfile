FROM mcr.microsoft.com/devcontainers/typescript-node:1-20-bookworm

# Install additional tools
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Install pnpm
RUN npm install -g pnpm

# Set working directory
WORKDIR /workspace
