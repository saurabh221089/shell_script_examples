#!/bin/bash
if [ $# -eq 0 ]
    then
      echo "$0 needs at least 1 parameter."
      exit 1

elif [ $1 -gt 0 ]
    then
        echo "$1 is a positive integer."    
elif [ $1 -eq 0 ]
    then
        echo "$1 is zero value." 
else
    echo "$1 is a negative number."

fi