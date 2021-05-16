#!/bin/bash -x
#Printing Message
printf "Welcome to flip coin combination \n"
#GENERATING RANDOM VALUE
result=$((RANDOM%2+1))
#CONSTANT VARIBALE
COUNT_HEAD=0
COUNT_TAIL=0
read -p "Enter how many time to flip coin: " userInput
TEMP=$userInput
#INITILIZE DICTIONARY
declare -A FlipingCoin
#USING LOOP TO FLIP COIN MULTIPLE TIME
for(( i=1; i<=$userInput; i++ ))
	do
		#GENERATING RANDOM VALUE
		result=$((RANDOM%2+1))
		case $result in
			1)
				COUNT_HEAD=$(($COUNT_HEAD+1))
				FlipingCoin["H"]="$COUNT_HEAD"
				;;
			2)
				COUNT_TAIL=$(($COUNT_TAIL+1))
				FlipingCoin["T"]="$COUNT_TAIL"
				;;
		esac
	done
headPercentage=`echo "scale=3; $COUNT_HEAD / $TEMP * 100 " |bc -l`
tailPercentage=`echo "scale=3; $COUNT_TAIL / $TEMP * 100 " |bc -l`
#PRINTING KEY AND VALUE OF COIN
for count in ${!FlipingCoin[@]}
	do
		echo "$count : ${FlipingCoin[$count]}"
	done
#PRINTING PERSENTAGE OF FLIPING COIN
echo "Head percentage : $headPercentage "
echo "Tail percentage : $tailPercentage "
