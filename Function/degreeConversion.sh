#!/bin/bash -x
echo "Enter Your Choice"
echo "1-Celcius To Farheneit"
echo "2-Farheneit To Celcius"
read choice


celciusToFarheneit(){
	celcius=$1
	ferheneit=`echo "$celcius*9/5+32" | bc -l`
        echo "Value In Farheneit Is : " $ferheneit
}


farheneitToCelcius(){ 
	ferheneit=$1
	celcius=`echo "$farheneit-32*5/9" | bc -l`
	echo "Value In Celcius Is : " $celcius
}


case $choice in
        1)
		echo "Enter The Value In Celcius"
       		read celcius
        	celciusToFarheneit $celciuS;;
        2)
		echo "Enter The value In farheneit"
        	read farheneit
        	farheneitToCelcius $farheneit;;
        *) 
		echo "Invalid Input";;
esac

