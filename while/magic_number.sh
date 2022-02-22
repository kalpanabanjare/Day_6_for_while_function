#the Magic Number

#a. Ask the user to think of a number n between 1 to 100
#b. Then check with the user if the number is less then n/2 or greater
#c. Repeat till the Magic Number is reached

read -p "Enter A number between 1 to 100: " num

if(($num<num/2 || $num>num/2))
then
    rev=0
    orignal_num=$num
    sum_of_digit=0
    while(( $num != 0 ))
    do
        rem=$(($num%10))
        sum_of_digit=$(($sum_of_digit + $rem))
        rev=$(($rev*10 + $rem))
        num=$(($num/10))
    done
    #echo "$sum_of_digit"
fi
    rev_1=0
    orignal_number_1=$sum_of_digit
    while(( $sum_of_digit != 0 ))
    do
        rem_1=$(($sum_of_digit%10))
        rev_1=$(($rev_1*10 + $rem_1))
        sum_of_digit=$(($sum_of_digit/10))
    done

    #echo "$rev_1"
    #echo "$orignal_num"
    #echo "$orignal_number_1"

    #mul=$(($rev_1*$orignal_number_1))

    #echo "$mul"

if(( $rev_1*$orignal_number_1 == $orignal_num))
then
     echo $orignal_num "is a magic number"
else
     echo $orignal_num "is not a magic number"
fi
