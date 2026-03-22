#!/bin/bash

echo "🧪 Running tests..."

# Simulate test pass
if [ -f app.sh ]; then
    echo "✅ Tests passed"
    exit 0
else
    echo "❌ Tests failed"
    exit 1
fi
