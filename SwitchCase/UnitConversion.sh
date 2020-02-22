read -p "Enter Number Convert From Feet to inch" Number
echo $(($Number*12))
read -p "Enter Number Convert From inch to Feet" Number
echo "$Number/12" | bc -l
read -p  "Enter Number Feet To Meter" Number
echo "$Number/3.2808" | bc -l
read -p "Enter Number To Convert From Meter To Feet" Number
echo "$Number*3.2808" | bc -l

