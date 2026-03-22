#!/bin/bash

echo "Running Terraform security scan..."

tfsec .

if [ $? -ne 0 ]; then
  echo "Security issues found!"
  exit 1
else
  echo "No security issues."
fi
