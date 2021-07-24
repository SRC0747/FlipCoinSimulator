#!/bin/bash -x
echo "Welcome to FlipCoin Simulator problem."
isCheck=1
head_value=0
tail_value=0
randomCheck=$((RANDOM%2))
count=1
while [ $count -le 21 ]
do
	if [ $isCheck -eq $randomCheck ]
	then
		head_value=$(($head_value+1))
	else
		tail_value=$(($tail_value+1))
	fi
	((count++))
done
if [ $head_value -gt $tail_value ]
then
	echo "Head wins by $(($head_value-$tail_value))"
elif [ $tail_value -gt $head_value ]
then
        echo "Tail wins by $(($tail_value-$head_value))"
else
	echo "Tie"
	if [ $isCheck -eq $randomCheck ]
        then
                head_value=$(($head_value+1))
        else
                tail_value=$(($tail_value+1))
        fi
	if [ $(($head_value-$tail_value)) -ge 2 ]
	then
		echo "Head wins  by 2."
	elif [ $(($tail_value-$head_value)) -ge 2 ]
        then
                echo "Tail wins  by 2."
	fi
fi


