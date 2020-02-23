#!/bin/bash -x
#TAKING INPUT FROM USER
read -p "Enter First Number : " num1
read -p "Enter Second Number : " num2
read -p "Enter Third Number : " num3


#ARITHMATIC OPERATION
firstOperation=$(("$num1+$num2*$num3"))
secondOperation=$(("$num1%$num2+$num3"))
thirdOperation=$(("$num3+$num1/$num2"))
fourthOperation=$(("$num1*$num2+$num3"))


#DISPLAY ARITHMATIC OPERATION
echo $num1+$num2*$num3 : $firstOperation
echo $num1%$num2+$num3 : $secondOperation
echo $num3+$num1/$num2 : $thirdOperation
echo $num1*$num2+$num3 : $fourthOperation


#FINDING MINIMUM VALUE
minimumValue=$firstOperation
if [[ $secondOperation < $minimumValue ]];
then
	minimumValue=$secondOperation;
elif [[ $thirdOperation < $minimumValue ]];
then
	minimumValue=$thirdOperation;
elif [[ fourthOperation < $minimumValue ]];
then
	minimumValue=$fouthOperation;
fi


#DISPLAY MINIMUM VALUE
echo "Minimum Value Is : " $minimumValue;


#FINDING MAXIMUM VALUE
maximumValue=$firstOperation
if [[ $secondOperation > $maximumValue ]];
then
	maximumValue=$secondOperation;
elif [[ $thirdOperation >  $maximumValue ]];
then 
	maximumValue=$thirdOperation;
elif [[ $fourthOperation > $maximumValue ]];
then
	maximumValue=$fourthOperation;
fi


#DISPLAY MAXIMUM VALUE
echo "Maximum Value Is : " $maximumValue;
