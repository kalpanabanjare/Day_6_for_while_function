#table

read -p "Enter table number" num

for((i=1; i<=$num; i++))
do
     echo "2" "^" $i "=" $((2**$i))
done
