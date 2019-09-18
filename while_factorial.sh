#!/bin/bash
echo "Enter a positive number "
read var
fact=1
while [ $var -gt 0 ]
do
    fact=$(( $fact * $var ))
    var=$(( $var - 1 ))
done
echo "Factorial: $fact"