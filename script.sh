#!/bin/bash
echo "=========================================="
echo "   Guest a number to win between 0 to 5 "
echo "=========================================="
read -p "Enter the number of guest you want to play: " upper_limit
start_val=1;
 while [[ $start_val -le $upper_limit ]]
 do
  echo "Round $start_val"
  start_val=$((start_val+1))
 rand_num=$(( 0 + RANDOM % (5 - 0 + 1) ))
 
 read -p "Enter the value you guest: " y
 if [[ $y -eq $rand_num ]] then
 echo "You WIN"
  elif [[ $y -lt $rand_num ]] then
   echo "You Lose!"
   echo "you below the win number"
   elif [[ $y -gt $rand_num ]] then
   echo "You Lose!"
   #echo "you are above the win number"
 else
  echo "Invalid number, Not within the range"
 fi
 echo "the win answer is $rand_num "
done 
