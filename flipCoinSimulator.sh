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





#Use Case 2 (Iterating multiple times to count occurrence of "Heads" and "Tails")

#isHeads=1
#isTails=0
#
#count_heads=0
#count_tails=0
#
#for((i=1;i<=20;i++))
#do
#	flip_check=$((RANDOM%2))
#
#	if [ $flip_check -eq $isHeads ]
#	then
#		count_heads=$((count_heads + 1))
#	elif [ $flip_check -eq $isTails ]
#	then
#                count_tails=$((count_tails + 1))
#	fi
#done
#
#echo "Heads occured $count_heads times"
#echo "Tails occured $count_tails times"





#Use Case 3 (Iterating multiple times to check whether "Heads" or "Tails" occured 21 times)

#echo "           "
#
#isHeads=1
#isTails=0
#
#count_heads=0
#count_tails=0
#
#win_diff=0
#
#for((i=1;i<=40;i++))
#do
#        flip_check=$((RANDOM%2))
#
#        if [ $flip_check -eq $isHeads ]
#        then
#                count_heads=$((count_heads + 1))
#        elif [ $flip_check -eq $isTails ]
#        then
#                count_tails=$((count_tails + 1))
#        fi
#
#	if [ $count_heads -eq 21 ]
#	then
#		break
#	elif [ $count_tails -eq 21 ]
#        then
#		break
#	fi
#done
#
#echo "Heads occured $count_heads times"
#echo "Tails occured $count_tails times"





#Use Case 4 (Iterating multiple times till difference of occurrence of "Heads" or "Tails" is 2)

isHeads=1
isTails=0

count_heads=0
count_tails=0

win_diff=0

for((i=1;i<=40;i++))
do
        flip_check_1=$((RANDOM%2))

        if [ $flip_check_1 -eq $isHeads ]
        then
                count_heads=$((count_heads + 1))
        elif [ $flip_check_1 -eq $isTails ]
        then
                count_tails=$((count_tails + 1))
        fi

       	if [ $count_heads -eq 21 ]
       	then
              break
       	elif [ $count_tails -eq 21 ]
       	then
		break
	elif [[ $count_heads -eq 20 && $count_tails -eq 20 ]]
	then
		flip_check_2=$((RANDOM%2))

		if [ $flip_check_2 -eq $isHeads ]
        	then
                	count_heads=$((count_heads + 1))
			win_diff_heads=$((count_heads-count_tails))
			while [ $win_diff_heads -ne 2 ]
			do
                        	count_heads=$((count_heads + 1))
				win_diff_heads=$((count_heads-count_tails))
			done

        	elif [ $flip_check_2 -eq $isTails ]
        	then
                	count_tails=$((count_tails + 1))
			win_diff_tails=$((count_tails-count_heads))

			while [ $win_diff_tails -ne 2 ]
			do
                        	count_tails=$((count_tails + 1))
                        	win_diff_tails=$((count_tails-count_heads))
			done	
        	fi

		if [[  $win_diff_heads -eq 2 || $win_diff_heads -eq 2 ]]
		then
			break
		fi
        fi
done


echo "Heads occured $count_heads times"
echo "Tails occured $count_tails times"
