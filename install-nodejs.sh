#!/bin/bash
git clone git://github.com/ry/node.git
cd node
./configure
make
sudo make install

# install express
sudo npm install -g express
