#!/bin/bash

# Lab 3: EC2 Provisioning (LocalStack)

ENDPOINT="http://localhost:4566"

VPC_ID="vpc-de8afc84de87541a0"
SUBNET_ID="subnet-a0306bf8c9f42a81f"
SG_ID="sg-e8bb6d2fe08646c1e"
KEY_NAME="lab3-key"

echo "Launching EC2 instance..."

INSTANCE_ID=$(aws --endpoint-url=$ENDPOINT ec2 run-instances \
--image-id ami-12345678 \
--instance-type t2.micro \
--key-name $KEY_NAME \
--security-group-ids $SG_ID \
--subnet-id $SUBNET_ID \
--query 'Instances[0].InstanceId' \
--output text)

echo "Instance launched: $INSTANCE_ID"

echo "Saving EC2 details..."

aws --endpoint-url=$ENDPOINT ec2 describe-instances \
--instance-ids $INSTANCE_ID > ec2-output.json

echo "✅ Lab 3 completed successfully!"
