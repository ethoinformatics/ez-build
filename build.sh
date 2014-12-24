#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

failure(){
	echo 'build failure' && exit 1;
}

cd $DIR
git submodule update --init

cd $DIR/d3-timeline
npm install;
sudo npm link;

cd $DIR/ethoinfo-framework
npm install;
sudo npm link;
npm link d3-timeline;
node bundler.js

cd $DIR/ethoinfo-project-app
npm install;
sudo npm link;
npm link ethoinfo-framework;
node bundler.js

cd $DIR/ethoinfo-framework/ionic

