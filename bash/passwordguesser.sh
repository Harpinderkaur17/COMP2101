#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#myString="TestString"
#task 1 user input fr password
read -p "Enter Password (1/5):" myString
referenceString="password"
# Task 2: Changed to if else condition
#Task 3: used if else combinations to give user 5 tries
if [ $myString = $referenceString ];
then
	echo "You got it right!"
else
	echo "You got it wrong!"
        read -p "Enter Password (2/5):" myString
	if [ $myString = $referenceString ];
then
        echo "You got it right!"
else
        echo "You got it wrong!"
        read -p "Enter Password (3/5):" myString
if [ $myString = $referenceString ];
then
        echo "You got it right!"
else
        echo "You got it wrong!"
        read -p "Enter Password (4/5):" myString
if [ $myString = $referenceString ];
then
        echo "You got it right!"
else
        echo "You got it wrong!"
        read -p "Enter Password (5/5):" myString
if [ $myString = $referenceString ];
then
        echo "You got it right!"
else
        echo "You got it wrong!, No More Tries"
fi
fi
fi
	fi
fi
