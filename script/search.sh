#!/usr/bin/env bash

read -p "Enter Directory to Search in: " dir
read -p "Enter file name or extension: " search_term

if [ ! -e "$dir" ]; then 
	echo "Error Listing: $dir Dont Exist"
	./script/logOperation.sh "Error Listing: $dir Dont Exist"
	exit 1
fi

find "$dir" -type f -maxdepth 1 -name "*$search_term*"
./script/logOperation.sh "searched $search_term in $dir"