#!/bin/env bash

set -e

echo 're-cloning..'
rm -Rf ./initrdCreator
git clone https://github.com/AlexanderARodin/initrdCreator.git
pwd
cd ./initrdCreator
pwd
chmod +x ./scripts/*

echo '..probably OK'
