#!/bin/bash -x

echo "Welcome to Flip Coin Simulation Problem"



#Use Case 1 (Flipping a Coin to Display Heads or Tails as winner)

#flip_check=$((RANDOM%2))
#
#isHeads=1
#
#echo "Flip Value: "$flip_check
#
#if [ $flip_check == $isHeads ]
#then
#	echo "So, Heads is Winner"
#else
#	echo "So, Tails is Winner"
#fi





# Use Case 2 ( Iterating multiple times to count occurrence of "Heads" and "Tails")

isHeads=1
isTails=0

count_heads=0
count_tails=0

for((i=1;i<=20;i++))
do
	flip_check=$((RANDOM%2))

	if [ $flip_check -eq $isHeads ]
	then
		count_heads=$((count_heads + 1))
	elif [ $flip_check -eq $isTails ]
	then
                count_tails=$((count_tails + 1))
	fi
done

echo "Heads occured $count_heads times"
echo "Tails occured $count_tails times"
