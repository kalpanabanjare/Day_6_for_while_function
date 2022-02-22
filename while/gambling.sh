#a gambler starts with Rs 100 and places Re 1 bet until goes broke
#no more money to gamble or reaches the goal of Rs 200
#number of times won and number of bets made

money=100
won_count=0
bet_count=0


while(( $money != 0 && $money != 200 ))
do
       (( bet_count++))
       random_num=$(( RANDOM% 2 ))

     if(( $random_num == 1 ))
     then
             ((money++))
             ((won_count++))
     else
             ((money--))
     fi

     echo "Money Remaining: " $money

done

echo "Number of times won:  " $won_count 
echo "Number of bets made: " $bet_count
