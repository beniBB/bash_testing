#!/bin/bash
red='\033[31m'
green='\033[32m'
yellow='\033[1;33m'
echo Welcome to Registration
read -p "Enter your Name " NAME
read -p "Enter your Date Of Birth " DOB
read -p "Enter your Address " ADDRESS
read -p "Enter your Favourite Color (Green/Red/Yellow) " COLOR
if [ "$COLOR" = "green" ]; then
 echo -e "${green}Your Name is $NAME"
 echo -e "${green}$NAME's Date Of Birth is $DOB"
 echo -e "${green}$NAME's Address is $ADDRESS"
 echo -e "${green}$NAME's Favourite Color is $COLOR"
elif [ "$COLOR" = "red" ]; then
 echo -e "${red}Your Name is $NAME"
 echo -e "${red}$NAME's Date Of Birth is $DOB"
 echo -e "${red}$NAME's Address is $ADDRESS"
 echo -e "${red}$NAME's Favourite Color is $COLOR"
elif [ "$COLOR" = "yellow" ]; then
 echo -e "${yellow}Your Name is $NAME"
 echo -e "${yellow}$NAME's Date Of Birth is $DOB"
 echo -e "${yellow}$NAME's Address is $ADDRESS"
 echo -e "${yellow}$NAME's Favourite Color is $COLOR"
fi
exit 0