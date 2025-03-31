#!/bin/bash

log_file="operation.log"

log_message() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') -$1" >> "$log_file"
}
if [ ! -f "log_file" ]; then
	touch "$log_file"
	log_message "Log file created"
fi

echo "Search file by name"
read -p "Enter Directoty " dir
read -p"Enter file name or extension" search_term
find "$dir" -type f -name "$search_term"

log_message "searched $search_term in $dir"