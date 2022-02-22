#a program that takes a command-line argument n and prints the nth harmonic number

read -p "Enter a number:" num
sum=0
for(( i=1; i<=$num; i++))
do
    if(( $i < $num ))
    then
         #echo "1/$i + "
         sum = $(( "scale=2; $sum + 1/$i" | bc ))
    fi
    if(( $i==$num))
    then
         #echo "1/$i"
         sum = $(( "scale=2; $sum + 1/$i" | bc ))
    fi
done

echo "nth harmonic number is: " $sum
