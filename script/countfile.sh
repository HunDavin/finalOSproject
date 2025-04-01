#!/usr/bin/env bash

read -p "Enter Directory: " dir
ls -l "$dir" | grep -c "^-"
./script/logOperation.sh "counted file in $dir "