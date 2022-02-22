# Temperature conversion
# from degC to degF
# from degF to degC
#the inputs are within the Freezing Point (0°C / 32°F) and the Boiling Point of Water (100 °C / 212°F)

celToFar()

{
if(($temp!=0 && $temp<=100))
then
     echo " Converting " $1 " from Celsius to Fahrenheit "
     temp_in_far=$(( echo " scale=2; ($1 * 9/5) + 32" | bc ))
     echo $1 " in Fahrenheit is " $temp_in_far
else
     echo "Input temperature is not in between freezing point 0deg to boiling point 100degC"
fi
}

farToCel()

{

if(($temp>=32 && $temp<=212))
then
     echo " Converting " $1 " from Fahrenheit to Celsius "
     temp_in_cel=$(( echo " scale=2;  ($1 - 32) * 5/9" | bc ))
     echo $1 " in Celsius is " $temp_in_cel
else
     echo "Input temperature is not in between freezing point 32degF to boiling point 212degF"
fi
}

read -p "Enter 1 to convert from Cel to Far or Enter 2 to convert from Far to Cel " input
case  $input in

     1)  read -p "Enter temperature in Celcius " temp
                   celToFar $temp
     ;;

     2)  read -p "Enter temperature in Fahrenheit " temp
                   farToCel $temp
     ;;

     *) echo "Error: Invalid Input!"
esac
