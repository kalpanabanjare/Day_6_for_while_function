#the program to take a range of number as input and output the Prime Numbers in that range

read -p "Enter lower range: "  m
read -p "Enter upper range: " n

for ((j=$m; j<=$n; j++))
do
    k=0
    for ((i=2; i<$j; i++ ))
    do
        if (( $j % $i == 0 ))
        then
            k=1
            break
        fi
    done
    if (( $k == 0 ))
    then
    echo $i
    fi
done
