#!/bin/bash

log_file="operation.log"

log_message() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') -$1" >> "$log_file"
}
if [ ! -f "log_file" ]; then
	touch "$log_file"
	log_message "Log file created"
fi

echo "Enter file or directory"
read dir
if [ -f "$dir" ]; then
	zip "$dir.zip" "$dir"
	log_message "compressed $dir"
elif [ -d "dir" ]; then
	zip -r "dir.zip" "$dir"
	log_message "compressed folder $dir"
else 
	echo "Error : No such file or directory"
	log_message "error: no file or directory"
	exit 1
fi
