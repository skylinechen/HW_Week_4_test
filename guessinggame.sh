#!/usr/bin/env bash
# File: guessinggame.sh
# Date: March 20, 2020
# Author: Allen CT Chen

function guessinggame {
if [[ ! "$file_cout" =~ ^[0-9]*$ ]] || [[ "$file_cout" -eq "" ]]
then
	echo "$file_cout is not number."
elif [[ "$file_cout" -gt "$wc_dir" ]]
then
	echo "The number $file_cout is too high."
else
	echo "The number $file_cout is too low."
fi
}

read -p "Guessing how may file in this directory: " file_cout
#dir=`pwd`
wc_dir=$(ls -la | grep "^-" | wc -l)

while [[ ! "$file_cout" =~ ^[0-9]*$ ]] || [[ "$file_cout" -ne "$wc_dir" ]]
do
	guessinggame
	echo "Try to enter again!"
	echo ""
	read -p "Guessing how may file in this directory: " file_cout
done

echo "Congratuation! Here are $wc_dir files under this directory!"

