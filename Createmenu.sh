#!/bin/bash
echo  Welcome To Menu
echo ==================
echo 1.Register User
echo 2.Users Details
echo 3.Edit User
echo 4.Save User 
echo 5.Change Password 
echo 6.Print Report
echo 7.Exit
echo "Input Your Preference number (Eg : ./Createmenu.sh 1) next line."
Black='\033[30m'
Red='\033[31m'
Green='\033[32m'
Brown='\033[33m'
Blue='\033[34m'
Purple='\033[35m'
Cyan='\033[36m'
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
exit 0