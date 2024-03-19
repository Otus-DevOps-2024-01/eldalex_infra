#!/bin/bash

# Установка Ruby, Bundler, MongoDB, Git
echo 'Installing Ruby, Bundler, MongoDB, Git'
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt update && apt install -y ruby-full ruby-bundler build-essential mongodb-org git
ruby -v
bundler -v

# Запуск MongoDB
systemctl start mongod && systemctl enable mongod && systemctl status mongod

# Деплой приложения
echo 'Deploying the app'
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install && puma -d
ps aux | grep puma
