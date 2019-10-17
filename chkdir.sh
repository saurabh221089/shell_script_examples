#!/bin/bash
echo "Enter the dirname to create.."
read dirname

if [ -d $dirname ]
   then
	echo "Directory $dirname is already present.."
	exit 0
else
	mkdir $dirname
	echo "Directory $dirname created successfully.."
	exit 0
fi
