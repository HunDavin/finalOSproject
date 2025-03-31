#!/bin/bash

while true;do
    	echo
	echo "|-----------------------------|"
    echo "|       Bash Program          |"
    echo "|-----------------------------|"
    echo "| 1. List files               |"
    echo "| 2. Create backup            |"
    echo "| 3. Count files              |"
    echo "| 4. Display disk usage       |"
    echo "| 5. Search file by name      |"
    echo "| 6. Compress file            |"
    echo "| q. Exit                     |"
    echo "|-----------------------------|"
	read -n 1 -s -p "Enter your choice" choice	

	case $choice in
		1)
		echo
		./script/listfile.sh
		sleep 1
		;;
		2)
		echo
		./script/makebackup.sh
		;;
		3)
		echo
		./script/countfile.sh
		;;
		4)
		echo
		./script/displaydisk.sh
		;;
		5)
		echo
		./script/search.sh
		;;
		6)echo
		./script/compress.sh
		;;
		q)
		echo "Exiting"
		exit 0
		;;
	esac
done
