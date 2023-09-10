#!/bin/bash
cd /home/ubuntu/Full-stack-expense-app

echo "Stopping application"

git checkout development
git pull origin development
aws --region=us-east-1 ssm get-parameter --name "/node-project-poc/enviroment-file"  --output text --query Parameter.Value | awk -F',' '{ for( i=1; i<=NF; i++ ) print $i }' > .env
node --version