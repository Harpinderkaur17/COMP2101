#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

#TASK 1
# number of sides and minimum values in variables
range=6
bias=1
# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
# used variables in generation of dice number
die1=$(( RANDOM % range + bias ))
die2=$(( RANDOM % range + bias ))
# display the results
echo "Rolled $die1, $die2"

#Task 2
# calculation of sum and average
echo "SUM = $(( die1 + die2))" 
echo "Average = $((( die1 + die2 )/2))" 
