#!/bin/bash

apt-get install -y python

git clone -b release_17.01 https://github.com/galaxyproject/galaxy.git /usr/local/bin/galaxy

cd /usr/local/bin/galaxy

cp ./config/galaxy.ini.sample ./config/galaxy.ini
sed -i.bak "s|#host = 127.0.0.1|host = 0.0.0.0|" ./config/galaxy.ini

./run.sh --daemon
