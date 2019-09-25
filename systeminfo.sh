#!/bin/bash

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
NC='\033[0m'              # No Color

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White


temp=`/opt/vc/bin/vcgencmd measure_temp`
rev=`cat /proc/device-tree/model`
kernel=`uname -r`
uptime=`uptime -p`
df=`df /dev/sda* -h`
mem_used=`free -m | grep -i mem | awk '{print $3}'`
mem_total=`free -m | grep -i mem | awk '{print $2}'`
os_name=`hostnamectl | grep Operating | cut -d: -f2`
os_release=`hostnamectl | grep Operating | cut -d: -f2`
cpu_name=`lscpu | grep "Model name" | cut -d: -f2`
arch=`hostnamectl | grep Architecture | cut -d: -f2`

if [ -z "$temp" ]
then
      echo -e "${Red}Not a RPI device...${NC}"
else
      echo -e "${BBlue}Cpu temp: $temp ${NC}"
fi

if [ -z "$rev" ]
then
    echo -e "${Red}No RPI revision found!${NC}"
else
    echo -e "${BBlue}Rpi revision: $rev ${NC}" 
fi

echo -e "${BGreen}Shell: ${NC} $SHELL"
echo -e "${BGreen}User: ${NC} $USER"
echo -e "${BCyan}Uptime: ${NC} $uptime"
echo -e "${Green}Disk free / total: \n $df ${NC}" 
echo -e "${BYellow}Memory used / total (MB): $mem_used / $mem_total ${NC}"
echo -e "${BBlue}OS name: $os_name ${NC}"
echo -e "${BBlue}OS version: $os_release ${NC}"
echo -e "${BBlue}Kernel version: $kernel ${NC}" #hostnamectl
echo -e "${BCyan}Architecture: $arch ${NC}"
echo -e "${BCyan}Cpu name: $cpu_name ${NC}"

#Ip address: ifconfig
#Cpu usage: top

#Hostname / OS name / version / Arch: "cat /etc/os-release" + "lsb_release -a" + hostnamectl