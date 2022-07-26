#!/bin/bash

for j in $(seq 0 9)
do 
	r=$(( $RANDOM % 900 + 100 ))
	array[$j]=$r
done

firstMinVal=999999
secondMinVal=999999
l1=-1
l2=-1

for ((i=0;i<10;i++))
do	
	val=${array[$i]}
	echo "VAL: $val"
	
	if [ $firstMinVal -gt $val ]
	then
		secondMinVal=$firstMinVal
		firstMinVal=$val
	elif [ $secondMinVal -gt $val -a $firstMinVal -ne $val ] 
		then
		secondMinVal=$val
	fi
	
	if [ $l1 -lt $val ]
	then
		l2=$l1
		l1=$val
	elif [ $l2 -lt $val -a $l1 -ne $val ] 
		then
		l2=$val
	fi
done
echo "Random array : ${array[@]}"
echo "1st Min value : $firstMinVal" 
echo "2nd Min value : $secondMinVal"
echo "1st Max value : $l1"
echo "2nd Max value : $l2"