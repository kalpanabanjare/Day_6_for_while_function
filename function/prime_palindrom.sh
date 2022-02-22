#Take a number from user and check if the number is a Prime then show that its palindrome is also prime

#a. Write function check if number is Prime
#b. Write function to get the Palindrome
#c. Check if the Palindrome number is also prime

#read -p "Enter a number:" num

prime_palindrom()
{
for((i=2; i<=num/2; i++))
do
  if (( $(($num%i)) == 0 ))
  then
    echo "$num is not a prime number"
    exit
  fi
done
echo "$num is a prime number"


rev=0
orignal_num=$num
while(( $num != 0 ))
do
    rem=$(($num%10))
    rev=$(($rev*10 + $rem))
    num=$(($num/10))
done

if(($orignal_num == $rev))
then
    echo $orignal_num "is a Palindrom" $rev

    for((i=2; i<=rev/2; i++))
    do
       if (( $(($rev%i)) == 0 ))
       then
           echo "$rev is not a prime number"
           exit
       fi
    done
    echo "$rev is a prime number"
else
    echo $orignal_num "is not a Plinndrom" $rev
fi

}

read -p "Enter a number:" num

prime_palindrom $num
