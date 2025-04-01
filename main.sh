#!/usr/bin/env bash

while true; do
	echo
	echo "Welcome to Bash Program"
	echo "======================="
	echo "1. List file"
	echo "2. Create backup"
	echo "3. Count file"
	echo "4. Display disk usage"
	echo "5. Search file by name"
	echo "6. Compress file"
	echo "q. to exit"
	echo -n "Enter your choice: "

	read choice	

	case $choice in
		1)./script/listfile.sh;;
		2)./script/makebackup.sh;;
		3)./script/countfile.sh;;
		4)./script/displaydisk.sh;;
		5)./script/search.sh;;
		6)./script/compress.sh;;
		q)exit 0;;
	esac
done
