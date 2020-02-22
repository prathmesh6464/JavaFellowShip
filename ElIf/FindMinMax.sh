read -p "Enter First Number : " Num1
read -p "Enter Second Number : " Num2
read -p "Enter Third Number : " Num3
firstOperation=`echo "scale=4; $Num1+$Num2*$Num3" | bc `
secondOperation=`echo "scale=4; $Num1%$Num2+$Num3" | bc `
thirdOperation=`echo "scale=4; $Num3+$Num1/$Num2" | bc `
fourthOperation=`echo "scale=4; $Num1*$Num2+$Num3" | bc -l`
echo $Num1+$Num2*$Num3: $firstOperation
echo $Num1%$Num2+$Num3: $secondOperation
echo $Num3+$Num1/$Num2: $thirdOperation
echo $Num1*$Num2+$Num3: $fourthOperation
MinimumValue=`echo "$firstOperation" | bc -l`
if [[ $(echo "$secondOperation < $MinimumValue" | bc -l) ]];
then
	MinimumValue=`echo "$secondOperation" | bc -l`;
elif [[ `echo "$thirdOperation < $MinimumValue" | bc -l` ]];
then
	MinimumValue=`echo "$thirdOperation" | bc -l`;
elif [[ fourthOperation < MinimumValue ]];
then
	MinimumValue=$fouthOperation;
fi
echo Minimum Value is : `echo "$MinimumValue" | bc -l`;

MaximumValue=`echo "$firstOperation" | bc -l`;

if (( `echo "$secondOperation > $MaximumValue" | bc -l` ));
then
	MaximumValue=`echo "$secondOperation" | bc -l`;
elif (( `echo "$thirdOperation >  $MaximumValue" | bc -l` ));
then 
	MaximumValue=`echo "$thirdOperation" |  bc -l`;
elif (( `echo "$fourthOperation > $MaximumValue" | bc -l` ));
then
	MaximumValue=`echo "$fourthOperation" | bc -l`;
fi
echo Maximum Value is : $MaximumValue
