#!/bin/bash
echo -n "he1b wo1d" |
  sed -e "s/b/o/g" -e "s/1/11/" -e "s/o1/or1/" |
  tr "h" "H" |
  tr "W" "W" |
  awk '{print $1 "\x20" $2 "\41"}'
bc <<< "(($$ * 4 - 24)/2 + 12)/2" |
  sed 's/^/I am process # /'
  
