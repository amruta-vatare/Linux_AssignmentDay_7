#!/bin/bash -x
echo -n "Enter the value :"
read num
foundFactor=0
checkPrime()
{
	for ((i=2;i<=$num;i++))
	do
		if [ $num%$i -eq 0 ]
		then 	
			return 1
		fi
	done
		if [ $i == num ]
		then 
			return 0
		fi
		return 1
}
getFactor()
{
	if [ checkPrime $num ]
	then 
		echo "given no is itselft is prime"
	else 
		foundFactor=0
		for ((x=2;x<num;x++))
		do	
			if [ $foundFactor ]
			then 
				break;
			fi
			for ((y=1;y<num;y++))
			do	
				if [ $x*$y -eq $num ]
				then 
					foundFactor=1;
					if [ $((checkPrime $x)) -a $((checkPrime $y)) ]
					then 
						echo "$x"
						echo "$y"
					elif [ $((checkPrime $x)) ]
						echo "$x"
						getFactor $y
					elif [ $((checkPrime $y)) ]
						echo "$y"
						getFactor $x
					else
						getFactor $x
						getFactor $y
					fi
				else
					continue;
					
				fi
			done
		fi
}

echo getFactor $num
