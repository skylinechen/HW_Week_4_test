#!/usr/bin/env bash
# File: guessinggame.sh
# Date: March 17, 2020
# Author: Allen CT Chen

function guessinggame {
read -p "Guessing how may file in this directory: " file_cout

#wc_dir1 = `ls -l . | wc -l`
#wcdir = wcdir1 -1

if [[ "$file_cout" -gt 3 ]]
then 
	echo "The number $file_cout is too high."
elif [[ "$file_cout" -lt 3 ]]
then
	echo "The number $file_cout is too low."
else
	echo "Congratuation! Here are 3 files under this directory!"
fi
}

guessinggame
