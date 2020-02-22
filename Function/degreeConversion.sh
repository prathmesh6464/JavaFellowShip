echo "enter your choice";
echo "1-celcius to farheneit";
echo "2-farheneit to celcius";
read number
function degf(){
	f=`echo "scale=3; (($c*9/5))+32 " | bc -l`;
        echo "value in farheneit is $f";
}
function degc(){
	c=`echo "scale=3; (($f-32))*5/9" | bc -l`;
	echo "value in celcius is $c"; 
}
case $number in
        1)echo "Enter the value in celcius"
        read c
        res="$(degf $c)"
	echo $res;
        ;;
        2)echo "Enter the value in farheneit"
        read f
        res="$(degc $f)";
	echo $res;
        ;;
        *) echo "invalid input";
        ;;
esac

