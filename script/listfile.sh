#!/usr/bin/env bash

read -p "Enter File or directory: " dir

if [ ! -e "$dir" ]; then 
	echo "Error Listing: $dir Dont Exist"
	./script/logOperation.sh "Error Listing: $dir Dont Exist"
	exit 1
fi

ls -l -R $dir
./script/logOperation.sh "listed $dir "
