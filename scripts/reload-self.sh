#!/bin/env bash

set -e

SRCPWD=$PWD

echo 're-cloning..'
cd ..
rm -Rf ./initrdCreator
git clone https://github.com/AlexanderARodin/initrdCreator.git
#cd ..; cd -
#cd ./initrdCreator
echo 
pwd
cd $SRCPWD
pwd
chmod +x ./scripts/*

echo '..probably OK'
