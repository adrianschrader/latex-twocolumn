#!/bin/bash
# Run this script from the document root
sh script/cleanAll.sh
sh script/build.sh
sh script/clean.sh

git add .
git status
git commit
git push origin master
