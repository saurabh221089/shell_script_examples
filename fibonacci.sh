#!/bin/bash

echo "Enter a number for Fibonacci range"
read num

if [ $num -gt 0 ]
then
    f1=0
    f2=1

    echo "Fibonacci series for $num range :"

    for (( k=0;k<=$num;k++ ))
        do
            echo -n "$f1 "
            fn=$((f1+f2))
            f1=$f2
            f2=$fn
        done

else
    echo "Enter a positive number, wrong usage!!"
fi