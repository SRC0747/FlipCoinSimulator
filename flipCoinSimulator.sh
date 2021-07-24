#!/bin/bash -x
echo "Welcome to FlipCoin Simulator problem."
isCheck=1
randomCheck=$((RANDOM%2))
if [ $isCheck -eq $randomCheck ]
then
	echo "Head value"
else
	echo "Tail value."
fi
