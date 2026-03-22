#!/bin/bash

# Lab 5: IAM User & Policy Automation (LocalStack)

ENDPOINT="http://localhost:4566"
USER_NAME="lab5-user"

echo "Creating IAM user..."
aws --endpoint-url=$ENDPOINT iam create-user --user-name $USER_NAME

echo "Attaching Administrator policy..."
aws --endpoint-url=$ENDPOINT iam attach-user-policy \
--user-name $USER_NAME \
--policy-arn arn:aws:iam::aws:policy/AdministratorAccess

echo "Creating access keys..."
aws --endpoint-url=$ENDPOINT iam create-access-key \
--user-name $USER_NAME > access-keys.json

echo "Listing users..."
aws --endpoint-url=$ENDPOINT iam list-users > users-output.json

echo "✅ Lab 5 completed successfully!"
