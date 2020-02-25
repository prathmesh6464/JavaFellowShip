#!/bin/bash -x
#VARIABLE
accountBalance=100
won=0
lost=0
goal=0


#CONSTANT VARIABLE
STAKE=1
TARGET=200


#LOOP FOR GENERATING RANDOM NUMBER 
while ((1))
do 
	result=$((RANDOM%2))
	if (($result==1))
	then
		accountBalance=$((accountBalance+1))
		((won++))
		((goal++))
		if (($goal==$TARGET))
		then
			echo You Achieved Your Goal Of : $goal
			break
		fi
	else
		accountBalance=$((accountBalance-1))
		((lost++))
		((goal--))
		if (($accountBalance==0))
                then
                        echo You Are Broke Your Account Balance is : $accountBalance
			break
                fi
	fi
done


#DISPLAY RESULT
echo You Won $won Times
echo You Lost $lost Times
