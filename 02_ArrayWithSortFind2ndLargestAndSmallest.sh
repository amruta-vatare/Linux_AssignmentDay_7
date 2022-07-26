#!/bin/bash

for j in $(seq 0 9)
do 
	r=$(( $RANDOM % 900 + 100 ))
	arr[$j]=$r
done
n=${#arr[@]}
echo "Array without sorted"
echo " ${arr[@]}"
echo "------------------------"
#logic for selection sort
for((i=0;i<n-1;i++))
do
small=${arr[$i]}
index=$i
for((j=i+1;j<n;j++))
do
if((arr[j]<small))
then
small=${arr[$j]}
index=$j
fi
done
temp=${arr[$i]}
arr[$i]=${arr[$index]}
arr[$index]=$temp
done
#printing sorted array
echo "Array after sorted"
echo "${arr[@]}"
echo "-----------------------------"
echo "1st Samllest Value: ${arr[0]}"
echo "2nd Samllest Value: ${arr[1]}"
echo "-------------------------------"
echo "1st largest Value: ${arr[cnt-1]}"
echo "2nd largest Value: ${arr[cnt-2]}"