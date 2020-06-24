#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
#Task1 : used variable $USER
myname=$USER
#Task2: using hostname command got hostname
hostname=$(hostname)
#Task3: Added time and day of week
today=$(date +%A)
time=$(date '+%I:%M %p')

#Task 4: setting title using day of week
doa=$(date +%w)

if [ $doa -eq 0 ];
then
	title="love"
fi
if [ $doa -eq 1 ];
then
	title="hot"
fi
if [ $doa -eq 2 ];
then
	title="sweet"
fi
if [ $doa -eq 3 ];
then
	title="princess"
fi
if [ $doa -eq 4 ];
then
	title="Queen"
fi
if [ $doa -eq 5 ];
then
	title="cool"
fi
if [ $doa -eq 6 ];
then
	title="kutta"
fi
###############
# Main        #
###############
msgVar="Welcome to planet $hostname, $title $myname!, It is $today at $time"
cowsay $msgVar
