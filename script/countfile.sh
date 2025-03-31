#!/bin/bash

log_file="operation.log"

log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$log_file"
}

if [ ! -f "$log_file" ]; then
    touch "$log_file"
    log_message "Log file created"
fi

echo "Count file"
read -p "Enter Directory: " dir

if [ -d "$dir" ]; then
    file_count=$(ls -l "$dir" | grep -c "^-")
    echo "Number of files in $dir: $file_count"
    log_message "Counted $file_count files in $dir"
else
    echo "Error: Directory does not exist."
    log_message "Failed to count files. $dir does not exist."
fi