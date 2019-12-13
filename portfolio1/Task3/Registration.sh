# Done For CSP2101 Scripting languages 
# by Benitro 

# A sample User registration, Bash script

#!/bin/bash

# Assign color code to variable 
red='\033[31m'
green='\033[32m'
yellow='\033[1;33m'

# Asking information from user to enter 
# and save them to each variables
echo Welcome to Registration
read -p "Enter your Name " NAME
read -p "Enter your Date Of Birth " DOB
read -p "Enter your Address " ADDRESS
read -p "Enter your Favorite Color (Green/Red/Yellow) " COLOR

# checking the condition and execute
# and display user details 
if [ "$COLOR" = "green" ]; then
 echo -e "${green}Your Name is $NAME"
 echo -e "${green}$NAME's Date Of Birth is $DOB"
 echo -e "${green}$NAME's Address is $ADDRESS"
 echo -e "${green}$NAME's Favorite Color is $COLOR"
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

# used to inform other scripts 
# that the script has successfully
# completed
exit 0