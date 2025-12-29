#!/bin/bash
set -e

echo "🔷 Setting up Fullstack Next.js environment..."

# Install dependencies
if [ -f "package.json" ]; then
    echo "📦 Installing dependencies..."
    pnpm install
fi

# Wait for PostgreSQL to be ready
echo "⏳ Waiting for PostgreSQL..."
until pg_isready -h db -p 5432 -U postgres; do
    sleep 1
done
echo "✅ PostgreSQL is ready!"

# Run Prisma migrations if schema exists
if [ -f "prisma/schema.prisma" ]; then
    echo "🗄️ Running Prisma migrations..."
    pnpm exec prisma migrate dev --name init
    pnpm exec prisma generate
fi

echo "✅ Setup complete! Run 'pnpm dev' to start!"
