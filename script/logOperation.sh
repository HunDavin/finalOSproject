#!/usr/bin/env bash

if [ ! -e "script.log" ]; then
    touch "script.log"
	./script/logOperation.sh "Log File Created"
fi

echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "script.log"