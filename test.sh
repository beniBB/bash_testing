#!/bin/bash

echo "hello world"
echo "I love you banu"
yellow='\033[34m'
name="banu"
a=""
age=24
echo "$name is $age years old"
echo "hello $* "
echo "hello $# "
read -p "Enter your Favourite Color (Green/Red/Yellow) " COLOR
if [ "$COLOR" = "e" ]; then
 echo -e "${yellow}banu"
fi
exit 0
