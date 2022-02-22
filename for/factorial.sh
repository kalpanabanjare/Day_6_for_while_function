#computes a factorial of a number taken as input
read -p "Enter the number:" num
factorial=1
for(( i=$num ; i>1 ; i-- ))
do
       factorial=$(( $factorial * $i ))
done

echo $factorial
