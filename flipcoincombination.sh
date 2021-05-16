#!/bin/bash -x
#Printing Message
printf "Welcome to flip coin combination \n"

#CONSTANT VARIBALE
COUNT_HEAD=0
COUNT_TAIL=0
read -p "Enter how many time to flip coin: " userInput
TEMP=$userInput
#INITILIZE DICTIONARY
declare -A FlipingCoin
#constant variable
COUNT_HHH=0
COUNT_HHT=0
COUNT_HTH=0
COUNT_THH=0
COUNT_TTT=0
COUNT_TTH=0
COUNT_THT=0
COUNT_HTT=0

#USING LOOP TO FLIP COIN MULTIPLE TIME
for(( i=1; i<=$userInput; i++ ))
	do
		#GENERATING RANDOM VALUE
		result=$((RANDOM%2+1))
                 #USING CASESTATEMENT
		case $result in
			1)
				COUNT_HHH=$(($COUNT_HHH+1))
				FlipingCoin["HHH"]="$COUNT_HHH"
				;;
			2)
				COUNT_HHT=$(($COUNT_HHT+1))
				FlipingCoin["HHT"]="$COUNT_HHT"
				;;
                        3)
                                COUNT_HTH=$(($COUNT_HTH+1))
                                FlipingCoin["HTH"]="$COUNT_HTH"
                                ;;
                        4)
                                COUNT_THH=$(($COUNT_THH+1))
                                FlipingCoin["THH"]="$COUNT_THH"
                                ;;

                        5)
                                COUNT_TTT=$(($COUNT_TTT+1))
                                FlipingCoin["TTT"]="$COUNT_TTT"
                                ;;
                        6)
                                COUNT_TTH=$(($COUNT_TTH+1))
                                FlipingCoin["TTH"]="$COUNT_TTH"
                                ;;
                        7)
                                COUNT_THT=$(($COUNT_THT+1))
                                FlipingCoin["THT"]="$COUNT_THT"
                                ;;
                        8)
                                COUNT_HTT=$(($COUNT_HTT+1))
                                FlipingCoin["HTT"]="$COUNT_HTT"
                                ;;

		esac
	done
#CALCULATING PERCENTAGE OF FLIPING COIN
HHHPercentage=`echo "scale=3; $COUNT_HHH / $TEMP * 100"  #|bc -l`
HHTPercentage=`echo "scale=3; $COUNT_HHT / $TEMP * 100"  #|bc -l`
HTHPercentage=`echo "scale=3; $COUNT_HTH / $TEMP * 100"  #|bc -l`
THHPercentage=`echo "scale=3; $COUNT_THH / $TEMP * 100"  #|bc -l`
TTTPercentage=`echo "scale=3; $COUNT_TTT / $TEMP * 100"  #|bc -l`
TTHPercentage=`echo "scale=3; $COUNT_TTH / $TEMP * 100"  #|bc -l`
THTPercentage=`echo "scale=3; $COUNT_THT / $TEMP * 100"  #|bc -l`
HTTPercentage=`echo "scale=3; $COUNT_HTT / $TEMP * 100"  #|bc -l`

#PRINTING KEY AND VALUE OF COIN
for count in ${!FlipingCoin[@]}
	do
		echo "$count : ${FlipingCoin[$count]}"
	done
#PRINTING PERCENTAGE OF FLIPING COIN
echo "Head head head percentage : $hhhPercentage"
echo "Head head tail percentage : $hhtPercentage"
echo "Head tail head percentage : $hthPercentage"
echo "Tail head head percentage : $thhPercentage"
echo "Tail tail tail percentage : $tttPercentage"
echo "Tail tail head percentage : $tthPercentage"
echo "Tail head tail percentage : $thtPercentage"
echo "Head Tail tail percentage : $httPercentage"

