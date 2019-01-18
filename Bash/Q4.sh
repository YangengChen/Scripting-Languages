#!/bin/bash
function show_usage {
        echo "Usage: $0 dir"
        exit 1
}
if [ $# -ne 1 ]; then show_usage
else
        if [ -d $1 ]; then :
        else echo 'Invalid directory'
        show_usage
        fi
fi
cd $1

subnum=`find . -maxdepth 1 -type d | wc -l`
printf "$subnum"
printf "Current date and time: `date`\n"
printf "Current directory is: `pwd`\n"
printf "\n"
printf " --- 10 most recently modified directories ---\n"

if [ "$subnum" -le 2 ]; then :
else ls -1ltd */ | head
fi

printf "\n"
printf " --- 6 largest files ---\n"
ls -1lrS | grep '^-' | tail -6
printf "\n"
printf '=%.0s' {1..100}
printf "\n"
