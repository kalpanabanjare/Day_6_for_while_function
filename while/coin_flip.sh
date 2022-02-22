#Flip Coin problem till either Heads or Tails wins 11 times.

head=0
tail=0

#random_num=$(( RANDOM%2 ))

while(( $head != 11 && $tail != 11 ))
do
      if(( $RANDOM%2 == 0 ))
      then
          (( head++ ))

      else
          (( tail++ ))
      fi
done
echo "Head count:" $head "Tail count:" $tail
