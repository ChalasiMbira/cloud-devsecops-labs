# Lab 2: S3 Bucket Creation & File Upload

## Objective
Create an S3 bucket and upload a file using AWS CLI and Linux.

## Tools Used
- AWS CLI
- LocalStack
- Linux (WSL)

## Commands Executed
aws --endpoint-url=http://localhost:4566 s3 mb s3://chalasi-lab-bucket
echo "This is a test file for Lab 2" > testfile.txt
aws --endpoint-url=http://localhost:4566 s3 cp testfile.txt s3://chalasi-lab-bucket
aws --endpoint-url=http://localhost:4566 s3 ls s3://chalasi-lab-bucket

## Result
File successfully uploaded and verified in the bucket.

## Why This Matters
Demonstrates the ability to provision cloud storage, manage files, and use CLI to interact with cloud infrastructure.

## Execution Style
All commands were executed manually in Linux terminal and verified.
