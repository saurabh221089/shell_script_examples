#!/bin/bash

bucket0=`aws s3 ls | cut -d " " -f3 2> /dev/null`
bucket1=`aws s3 ls | awk '{print $3}' 2> /dev/null`

if [[ $bucket1 ]]
 	then
	for i in $bucket1
	do
		echo $i
	done
		exit 0
else
    echo "AWS is not configured on this machine.."
	exit 1
fi

