read -p "Enter Number To Convert into Units " number
case "${#number}" in 
	1)
		echo $number in unit 1 place;;
	2)
		num=$(($number%10))
		echo $num in unit 1 place
		number=$(($number/10))
		echo $number in unit 10 place;;
	3)
		num=$(($number%10))
		echo $num in unit 1 place
		number=$(($number/10))
		num=$(($number%10))
		echo $num in unit 10 place;
		number=$(($number/10))
		echo $number in Unit 100 place;;

	4)
		num=$(($number%10))
		echo $num in unit 1 place
		number=$(($number/10))
		num=$(($number%10))
		echo $num in unit 10 place
		number=$(($number/10))
		num=$(($number%10))
		echo $num in unit 100 place
		number=$(($number/10))
		echo $number in unit 1000 place ;;
	*)
		printf "Please Enter Number Between 0 to 1000 \n"

esac
