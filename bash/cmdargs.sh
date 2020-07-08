#!/bin/bash
# This script demonstrates how the shift command works

debugMode=off
verboseMode=off
debuglevel=0

# create an empty array to put the command line arguments into
myargs=()
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
# Anything that wasn't recognized on the command line should still go into the myargs array

# used case statement to recognise options
case $1 in
	-h)
	echo "Help"
        echo "You can use -h for help, -v for verbose and -d {0-9} for debug mode with single digit level"
exit
;;

-v)
	# Assigning on value to verboseMode
	echo "Turning on Verbose mode"
        verboseMode=on
;;

-d)
	# checking if the number is provided with -d is single digit
	if [ ! -z "$2" ] && [ $2 -gt 0 ] && [ $2 -lt 10 ];
      	then
		echo "Turniing on Debug mode at $2 Level"
		# turing debugMode on

	       debugMode=on
	       # settin level to 2nd argument

       	       level=$2
	       # shifting
	   echo "Provide -d with a single digit number, use -h for help"
	fi
		;;
	*)
		# for all other options
		echo "Command argument Un-recognized  : $1"
esac


  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label

echo "Verbose Mode is $verboseMode"
# printing debug mode on with level if level is not 0
if [[ $level -eq 0 ]];
then
	echo "Debug Mode is $debugMode"
else
	echo "Debug Mode is $debugMode at Level $level"
fi
echo "myargs = ${myargs[@]}"
