#!/bin/env bash

set -e

echo 're-cloning..'
rm -Rf ./initrdCreator
git clont https://github.com/AlexanderARodin/initrdCreator.git

echo '..probably OK'
