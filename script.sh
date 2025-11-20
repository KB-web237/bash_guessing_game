#!/bin/bash
x=$(( 0 + RANDOM % (5 - 0 + 1) ))
count=0
echo "=========================================="
echo "   Guest a number to win between 0 to max you want:  "
echo "=========================================="
read -p "Enter the number of guest you want to play: " upper_limit
for i in $(seq 1 "$upper_limit")
 do
 read -p "Enter the value you guest: " y
 if [[ $y -eq $x ]] then
 echo "You WIN"
 count++;
  elif [[ $y -lt $x ]] then
   echo "You Lose!"
   #echo "you below the win number"
   elif [[ $y -gt $x ]] then
   echo "You Lose!"
   #echo "you are above the win number"
else
  echo "Invalid number, Not within the range"
fi
echo "the win answer is $x "
