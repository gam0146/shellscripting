#!/usr/bin/bash

echo "Enter a positive integer between 1 and 100"
read number

randomNum=$(($RANDOM % 100))

#echo $randomNum

counter=0


while [ $randomNum -ne $number ]
do
    counter=$((counter+1))
    if [ $number -gt $randomNum ]
    then
        echo "$number is greater then the Random number"
        if [ $(($number - $randomNum)) -eq 1 ]
        then
            echo "You were Hot"
        elif [ $(($number - $randomNum)) -le 5 ]
        then
            echo "You were Warm"
        else [ $(($number - $randomNum)) -ge 6 ]
            echo "you were Cold"
        fi
        
    elif [ $number -lt $randomNum ]
    then
        echo "$number is less then the Random number"
         if [ $(($randomNum - $number)) -eq 1 ]
        then
            echo "You were Hot"
        elif [ $(($randomNum - $number)) -le 5 ]
        then
            echo "You were Warm"
        else [ $(($randomNum - $number)) -ge 6 ]
            echo "you were Cold"
        fi
        
    fi
    echo "you guessed $counter times"
    echo "Enter a positive integer between 1 and 100 again"
    read number
    
done

echo "You guessed the number right"
echo "You guessed a total of $counter times"
