#!/usr/bin/env bash

read -p "Enter file or directory to Backup: " source
read -p "Enter backup location: " des

if [ ! -e "$source" ]; then
	echo "Error Backup: $source Dont Exist"
	./script/logOperation.sh "Error Backup: $source Dont Exist"
	exit 1
fi

mkdir "$des"

if [ -f "$source" ]; then
	echo "backing up file"
	cp -v "$source" "$des"
	./script/logOperation.sh "backup $source to $des"
elif [ -d "$source" ]; then
	echo "backing up a directory"
	./script/logOperation.sh "backup $source to $des" 
	cp -rv "$source" "$des"
fi

