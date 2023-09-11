#!/bin/bash
set -x
cd  /home/ubuntu/Full-stack-expense-app
su ubuntu -c "git pull origin development"
aws --region=us-east-1 ssm get-parameter --name "/node-project-poc/enviroment-file"  --output text --query Parameter.Value | awk -F',' '{ for( i=1; i<=NF; i++ ) print $i }' > .env
node --version
npm i
npm link razorpay
npm install pm2@latest -g
pm2 start app.js
pm2 status