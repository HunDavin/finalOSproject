#!/bin/bash

log_file="operation.log"

log_message() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') -$1" >> "$log_file"
}
if [ ! -f "log_file" ]; then
	touch "$log_file"
	log_message "Log file created"
fi

echo "listing file"
echo
read -p"Enter file or directory " dir
if [[ ! -e "$dir" ]]; then 
	echo "Error: '$dir' does not exist"
	exit 1
	log_message "error listing file"
fi
ls -lah $dir
log_message "listed $dir "
