#!/bin/bash -x
#Printing Message
printf "Welcome to flip coin combination \n"

#Generating Random Value
result=$((RANDOM%2+1))
isHead=1
#condition is true then head otherwise tail
if(( $isHead == $result ))
then
      echo "Head"
else
      echo "Tail"
fi
