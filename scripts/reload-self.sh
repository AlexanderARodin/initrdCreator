#!/bin/env bash

set -e

echo 're-cloning..'
cd ..
rm -Rf ./initrdCreator
git clone https://github.com/AlexanderARodin/initrdCreator.git
cd ..; cd -
cd ./initrdCreator
chmod +x ./scripts/*

echo '..probably OK'
