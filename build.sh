#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

failure(){
	echo 'build failure' && exit 1;
}

cd $DIR

cd $DIR/d3-timeline
npm install;
sudo npm link;

cd $DIR/ethoinfo-framework
npm link d3-timeline;
npm install;
sudo npm link;

cd $DIR/ethoinfo-project-app
npm link ethoinfo-framework;
npm install;
sudo npm link;
node bundler.js

cd $DIR/ethoinfo-project-app/dist/www

