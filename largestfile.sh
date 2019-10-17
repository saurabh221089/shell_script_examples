#!/bin/bash
echo "Finding top 5 largest directories"
echo "Enter the full path starting with '/'"
read fp

echo `sudo du -sh $fp 2> /dev/null| sort -hr | head -n 5`