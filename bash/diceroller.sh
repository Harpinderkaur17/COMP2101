#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"

#number of letteres in firstname
noOfLetters=9

# using loop to roll the dice number of letters in first name times
for((c=0;c<$noOfLetters;c++))
do
	echo " "
        echo "Rolling.."
        echo "$(( RANDOM % 6 + 1)) rolled" 	
done
