#!/bin/bash
# Run this script from the document root
sh scr/cleanAll.sh
sh scr/build.sh
sh scr/clean.sh

git add .
git status
git commit
git push origin master
