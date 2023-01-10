#!/bin/env bash

set -e

SRCPWD=$PWD

echo 're-cloning..'
cd ..
rm -Rf ./initrdCreator
git clone https://github.com/AlexanderARodin/initrdCreator.git
cd $SRCPWD
chmod +x ./scripts/*

echo '..probably OK'
