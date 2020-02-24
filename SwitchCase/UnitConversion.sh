#!/bin/bash -x
#CONVERT NUMBER FEET TO INCH
read -p "Enter Number Convert From Feet to inch" Number
echo $(($Number*12))
#CONVERT NUMBER INCH TO FEET
read -p "Enter Number Convert From inch to Feet" Number
echo "$Number/12" | bc -l
#CONVERT NUMBER FEET TO METER
read -p  "Enter Number Feet To Meter" Number
echo "$Number/3.2808" | bc -l
#CONVERT NUMBER METER TO FEET
read -p "Enter Number To Convert From Meter To Feet" Number
echo "$Number*3.2808" | bc -l

