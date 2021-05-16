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
#constant variable
COUNT_HH=0
COUNT_HT=0
COUNT_TT=0
COUNT_TH=0
#INITILIZE DICTIONARY
declare -A FlipingCoin
#USING LOOP TO FLIP COIN MULTIPLE TIME
for(( i=1; i<=$userInput; i++ ))
	do
		#GENERATING RANDOM VALUE
		result=$((RANDOM%2+1))
                 #USING CASESTATEMENT
		case $result in
			1)
				COUNT_HH=$(($COUNT_HH+1))
				FlipingCoin["HH"]="$COUNT_HH"
				;;
			2)
				COUNT_HT=$(($COUNT_HT+1))
				FlipingCoin["HT"]="$COUNT_HT"
				;;
                        3)
                                COUNT_TT=$(($COUNT_TT+1))
                                FlipingCoin["TT"]="$COUNT_TT"
                                ;;
                        2)
                                COUNT_TH=$(($COUNT_TH+1))
                                FlipingCoin["TH"]="$COUNT_TH"
                                ;;

		esac
	done
#CALCULATING PERCENTAGE OF FLIPING COIN
HeadHeadPercentage=`echo "scale=3; $COUNT_HH / $TEMP * 100 " #|bc -l`
HeadTailPercentage=`echo "scale=3; $COUNT_HT / $TEMP * 100 " #|bc -l`
TailTailPercentage=`echo "scale=3; $COUNT_TH / $TEMP * 100 " #|bc -l`
TailHeadPercentage=`echo "scale=3; $COUNT_TH / $TEMP * 100 "  #|bc -l`

#PRINTING KEY AND VALUE OF COIN
for count in ${!FlipingCoin[@]}
	do
		echo "$count : ${FlipingCoin[$count]}"
	done
#PRINTING PERSENTAGE OF FLIPING COIN
echo "HeadHead percentage : $HeadHeadPercentage "
echo "HeadTail percentage : $HeadTailPercentage "
echo "TailTail percentage : $TailTailPercentage "
echo "TailHead percentage : $TailHeadPercentage "
