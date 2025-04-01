#!/usr/bin/env bash

read -p "Enter directory: " dir
du -sh "$dir"
./script/logOperation.sh "display disk usage of $dir"
