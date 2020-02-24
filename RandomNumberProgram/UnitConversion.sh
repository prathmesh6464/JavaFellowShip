#!/bin/bash -x
#CONVERT FEET TO INCH
read -p "Enter Value To Convert Feet To Inch" number
echo $(($number*12)) "inch"
#CONVERT INCH TO FEET
read -p "Enter Value To Convert Inch To Feet" number
echo "$number/12" | bc -l "feet"
#CONVERT FEET TO METERS
read -p "Enter Value m and n in Feet To Convert into meters" number
read number2
echo "$number2*$number/3.2808" | bc -l "meters"
#CONVERT TO AREA
read -p "Enter Number To Calculate Area Of 25 plots " number
read number2
echo "($number*$number)*($number2*$number2)*0.00024711" | bc -l "acres"
