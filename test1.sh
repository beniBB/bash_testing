#!/bin/bash
echo wellcome to option selection
echo select the number
OPTIONS="Hello Quit love"
select opt in $OPTIONS; do
    if [ "$opt" = "Quit" ]; then 
     echo done
     exit
    elif [ "$opt" = "$2" ]; then
     echo Hello World
    elif [ "$opt" = "love" ]; then
     echo i love u 
    else
     clear
     echo bad option
    fi
done