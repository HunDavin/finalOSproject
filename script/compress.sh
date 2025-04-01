#!/usr/bin/env bash

read -p "Enter file or directory to Compress: " dir
baseName=$(basename "$dir")

[ ! -e "zip" ] && mkdir "zip"

if [ -f "$dir" ]; then
	zip "./zip/$baseName.zip" "$dir"
	./script/logOperation.sh "compressed $dir"
elif [ -d "$dir" ]; then
	zip -r "./zip/$baseName.zip" "$dir"
	./script/logOperation.sh "compressed folder $dir"
else 
	echo "Compress Error: $dir Dont Exist"
	./script/logOperation.sh "Compress Error: $dir Dont Exist"
fi
