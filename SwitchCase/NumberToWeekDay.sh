#!/bin/bash -x
read -p "Enter Number To Display The Week Day : " Number
case $Number in 

	0)
		echo Sunday;;
	1)
		echo Monday;;
	2)
		echo Tuesday;;
	3)
		echo Wednesday;;
	4)
		echo Thursday;;
	5)
		echo Friday;;
	6)
		echo Saturday;;
	*)
		echo "please Enter Number From 0 to 6 only"
esac
