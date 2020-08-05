#!/bin/bash -x

echo "Welcome to Flip Coin Simulation Problem"

#Use Case 1 (Flipping a Coin to Display Heads or Tails as winner)

flip_check=$((RANDOM%2))

isHeads=1

echo "Flip Value: "$flip_check

if [ $flip_check == $isHeads ]
then
	echo "So, Heads is Winner"
else
	echo "So, Tails is Winner"
fi
