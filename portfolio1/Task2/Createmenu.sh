# Done For CSP2101 Scripting languages 
# by Benitro )

# A sample menu display, Bash script

#!/bin/bash

# Displaying menu items to choose
echo   Welcome To Menu    
echo ==================
echo 1.Register User
echo 2.Users Details
echo 3.Edit User
echo 4.Save User 
echo 5.Change Password 
echo 6.Print Report
echo 7.Exit

# tell user to input argument value
echo "Input Your Preference number (Eg : ./Createmenu.sh 1) next line."

# color code to variables
Black='\033[30m'
Red='\033[31m'
Green='\033[32m'
Brown='\033[33m'
Blue='\033[34m'
Purple='\033[35m'
Cyan='\033[36m'

#checking the condition values with user input and execute
if [ "$1" = "1" ]; then
    echo -e "${Black}You Are Registered"
elif [ "$1" = "2" ]; then
    echo -e "${Red}Details Saved"
elif [ "$1" = "3" ]; then
    echo -e "${Green}Edit Saved"
elif [ "$1" = "4" ]; then
    echo -e "${Brown}User Saved"
elif [ "$1" = "5" ]; then
    echo -e "${Blue}Password Changed"
elif [ "$1" = "6" ]; then
    echo -e "${Purple}Report printed"
elif [ "$1" = "7" ]; then
    clear
    echo -e "${Cyan}bye"
fi
# used to inform other scripts 
# that the script has successfully
# completed
exit 0