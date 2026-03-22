#!/bin/bash

# Lab 4: S3 Automation (LocalStack)

ENDPOINT="http://localhost:4566"
BUCKET_NAME="lab4-bucket-demo"
FILE_NAME="test-file.txt"

echo "Creating test file..."
echo "Hello from Lab 4 S3" > $FILE_NAME

echo "Creating S3 bucket..."
aws --endpoint-url=$ENDPOINT s3 mb s3://$BUCKET_NAME

echo "Uploading file..."
aws --endpoint-url=$ENDPOINT s3 cp $FILE_NAME s3://$BUCKET_NAME/

echo "Listing bucket contents..."
aws --endpoint-url=$ENDPOINT s3 ls s3://$BUCKET_NAME > bucket-output.txt

echo "✅ Lab 4 completed successfully!"
