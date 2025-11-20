#!/bin/bash
echo "=========================================="
echo "   Guest a number to win between 0 to 5 "
echo "=========================================="
echo "Enter the number of guest you want to play: "
read -r upper_limit
start_val=1;
 while [[ $start_val -le $upper_limit ]]
 do
  echo "Round $start_val"
  start_val=$((start_val+1))
 rand_num=$(( 0 + RANDOM % (5 - 0 + 1) ))
   echo "Enter the value you guest: " 
 read -r guess_num
 if [[ $guess_num -eq $rand_num ]]; then
 echo "You WIN"
  elif [[ $guess_num -lt $rand_num ]]; then
   echo "You Lose!"
   echo "you below the win number"
   elif [[ $guess_num -gt $rand_num ]]; then
   echo "You Lose!"
    echo "you above the win number"
 else
  echo "Invalid number, Not within the range"
 fi
 echo "the win answer is $rand_num "
done 
