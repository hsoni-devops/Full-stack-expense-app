#!/bin/bash
cd /home/ubuntu/
sudo DEBIAN_FRONTEND=noninteractive apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive sudo apt-get install docker docker-compose -y
sudo apt purge nodejs -y
sudo apt install curl 
sudo DEBIAN_FRONTEND=noninteractive curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
cat <<EOF >> .bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
EOF
bash
nvm install 18.12.1
sudo DEBIAN_FRONTEND=noninteractive apt-get install npm -y
git clone https://github.com/hsoni-devops/Full-stack-expense-app.git
cd Full-stack-expense-app
git checkout development
sudo docker-compose up -d
npm i
npm link razorpay
npm install pm2@latest -g
sudo pm2 start app.js
sudo pm2 startup
sudo pm2 save