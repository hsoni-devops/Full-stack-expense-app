#!/bin/bash
cd /home/ubuntu/Full-stack-expense-app

echo "Restarting application"
sudo -i PM2_HOME=/etc/.pm2 pm2 start app.js
# sudo -i PM2_HOME=/etc/.pm2 pm2 restart all