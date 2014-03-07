#!/bin/bash

# Installing dependancys for node
apt-get install g++ curl libssl-dev apache2-utils
apt-get install git-core

# Installing NodeJS
cd ~/Downloads/
git clone https://github.com/joyent/node.git
cd node
git checkout v0.6.18 #Try checking nodejs.org for what the stable version is
./configure --prefix=/opt/node && make && sudo make install

echo 'export PATH=~/opt/bin:${PATH}' >> ~/.bashrc

# Install Pre-Requisites

# Installing node.js driver for MongoDB 
npm install -g mongodb

# Installing mongoose, an elegant mongodb object modeling for node.js
npm install -g mongoose

# Installing express, web framework for node.js
npm install -g express

# Installing Yeoman
npm install -g yo

npm install -g generator-webapp

# Installing Bower
npm install -g bower

# Installing Grunt
npm install -g grunt-cli

# Installing Winston advance loggin for node.js
npm install -g winston
