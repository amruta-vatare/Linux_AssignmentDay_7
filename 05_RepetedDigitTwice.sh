#!/bin/bash

i=0
for r in $(seq 1 100)
do 
	# r=$(( ( $RANDOM % 100) +1 ))
	if [ $(($r%10)) -eq $(($r/10)) ]
	then
		array[$i]=$r
		((i++))
	fi
done
echo "${array[@]}"