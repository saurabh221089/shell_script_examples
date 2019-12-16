#/bin/bash

echo "Enter your choice: (1 or 2)"
echo "1. Public IP"
echo "2. Private IP"

read option

case $option in

1) publicip=`curl ifconfig.me 2> /dev/null`
echo $publicip
;;
2) ip=`ifconfig | grep -A 1 -E 'ens33|eth0' | tail -1 | cut -d ' ' -f 10`
echo $ip
;;
*)
echo "Wrong input!!"
exit 1
;;
esac