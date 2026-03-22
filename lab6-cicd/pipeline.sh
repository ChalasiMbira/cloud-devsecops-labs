#!/bin/bash

echo "🔄 Starting CI/CD Pipeline..."

# Step 1: "Pull code"
echo "📥 Pulling latest code..."
sleep 1

# Step 2: Build
echo "🏗️ Building application..."
sleep 1

# Step 3: Test
echo "🧪 Testing application..."
./test.sh

if [ $? -ne 0 ]; then
    echo "❌ Pipeline failed at testing stage"
    exit 1
fi

# Step 4: Deploy
echo "🚀 Deploying application..."
./app.sh

echo "✅ Pipeline completed successfully!"
