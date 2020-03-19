#!/usr/bin/env bash
# File: guessinggame.sh
# Date: March 19, 2020
# Author: Allen CT Chen

function guessinggame {
if [ "$file_cout" -gt "$wc_dir" ];then
	echo "The number $file_cout is too high."
else
	echo "The number $file_cout is too low."
fi
}

read -p "Guessing how may file in this directory: " file_cout

dir=`pwd`
wc_dir1=`ls -l $dir| wc -l`
wc_dir=$[ $wc_dir1-1 ]

while [[ "$file_cout" -ne "$wc_dir" ]]
do
	guessinggame
	echo "Try to enter again!"
	echo ""
	read -p "Guessing how may file in this directory: " file_cout
done

echo "Congratuation! Here are $wc_dir files under this directory!"

