#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#firstnum=5
#secondnum=2
#user inputs
echo "First number" 
read firstnum
echo "Second number" 
read secondnum
echo "Third number"
read thirdnum

# calculation of sum of three numers
sum=$((firstnum + secondnum+thirdnum))
#dividend=$((firstnum / secondnum))
#fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
# calculation of product of three numbers 
product=$((firstnum * secondnum * thirdnum))
#printing output only sum and product off three numbers
cat <<EOF

SUM
$firstnum plus $secondnum plus $thirdnum is $sum
PRODUCT
$firstnum multiply by $secondnum multiply by $thirdnum is $product
EOF
