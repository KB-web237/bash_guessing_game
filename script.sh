#!/bin/bash
echo "=========================================="
echo " Guest a number to win between 1 to 5 "
echo "=========================================="
start_val=1
while true;
do
#echo "Round $start_val"
start_val=$((start_val+1))
rand_num=$(( 1 + RANDOM % (5 - 1 + 1) ))
echo "Enter the value you guest: " 
read -r guess_num
if [[ $guess_num -eq 0 ]]; then
echo "Exiting the game. Thanks for playing!"
break
fi
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
echo "the win answer is $rand_num ... and to quit type 0"
done 