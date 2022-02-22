#a function to check if the two numbers are Palindromes

palindrom()
{

    num=$1
    rev=0
    orignal_num=$1

    while(( $num != 0 ))
    do
        rem=$(($num%10))
        rev=$(($rev*10 + $rem))
        num=$(($num/10))
    done

    if(($orignal_num == $rev))
    then
        echo $orignal_num "is a Palindrom" $rev
    else
        echo $orignal_num "is not a Plinndrom" $rev
    fi
}

palindrom 1331
palindrom 1223

