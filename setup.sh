#!/bin/bash

# use super user
sudo su

# Installing dependancys for node
apt-get install g++ curl libssl-dev apache2-utils
apt-get install git-core

# Installing NodeJS
cd ~/Downloads/
git clone https://github.com/joyent/node.git
cd node
./configure --prefix=/opt/node && make && sudo make install

echo 'export PATH=~/opt/bin:${PATH}' >> ~/.bashrc
echo 'export CHROME_BIN="/usr/bin/chromium-browser"' >> ~/.bashrc && source ~/.bashrc

# Install Pre-Requisites

# Installing node.js driver for MongoDB 
npm install -g mongodb

# Installing mongoose, an elegant mongodb object modeling for node.js
npm install -g mongoose

# Installing express, web framework for node.js
npm install -g express

# Installing Yeoman
#npm install -g yo

# Installing angularJS web generator for Yeoman
npm install -g generator-angular

# Installing Bower
npm install -g bower

# Installing Grunt
npm install -g grunt-cli

# Installing Winston advance loggin for node.js
npm install -g winston


# Installing AngularJS using Yo
yo angular  						# Scaffolding AnguarJS web application

# [?] Would you like to use Sass (with Compass)? No
# [?] Would you like to include Twitter Bootstrap? Yes
# [?] Which modules would you like to include? angular-resource.js, angular-cookies.js, angular-sanitize.js, angular-route.js

bower install angular-ui 			# Install anguler-ui dependancy

bower install 						# Install dependancys

## For some reson karma and testaclar uses chrome browser howerver ubuntu comes with chromium so we need to change to karma.conf.js to use:
# browsers = ['chromium-browser'];
# ref: http://stackoverflow.com/questions/18093148/cannot-start-chrome-error-with-yeoman

grunt test                        	# test your app
grunt server                       	# preview your app (formerly `grunt server`)
grunt                             	# build the application for deployment
