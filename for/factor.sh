#Print the prime factors of number N.

read -p "Enter number: " num
count=0
 for(( i=2 ; i<= $num/2 ; i++ ))
 do
         if(( $num%$i == 0  ))
         then
              echo $i
             (( count++ ))
         fi
done

echo "Number of factors: " $count
