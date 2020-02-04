# Author: BENITRO JOSEPH
# Description: CSP2101 Assignment-Software Based Solution

#!/bin/bash

url=$"https://www.space.com/34-image-day.html"
start_date=$2

### guide function
function guide()
{
    echo "Example of the commands for each of the inputs are,"
    echo "singleimage_download; i.e. ./spacecom.sh -d 2020-01-31"
    echo "explanationViewer; i.e. ./spacecom.sh --view 2020-01-31" 
    echo "detailViewer; i.e. ./spacecom.sh s -dt 2020-01-31"
    echo "multipleimage_download; i.e. ./spacecom.sh --r 2020-01-31"
}

### checksite_availability fuction
function checksite_availability()
{    
    echo "Checking wait...."
    if curl -s --head  --request GET $url | grep "200 OK" > /dev/null; then 
       echo "Checking Success"
       echo "space.com is AVAILABLE"   
    else
       echo "space.com is UNAVAILABLE"
       exit 1
    fi
}

### date_calulation function
function date_calulation()
{
    start_date=$start_date
    end_date=`date +"%Y-%m-%d"`

    sdate=$(date --date="$start_date" '+%s')
    edate=$(date --date="$end_date"   '+%s')
    days=$(( (edate - sdate) / 86400 ))
    x=$((days + 1))
    #echo "$days days between $start_date and $end_date and $x"
    return $x
}

### title_download function
function title_download()
{
    date_calulation
    local res=$?
    v=$res

    wget -q "$url" -O -|grep -n '<h2 id="'|cut -d\" -f3|cut -d\< -f1 | sed -n  "$v"p 
}

### singleimage_download function
function singleimage_download()
{
    date_calulation
    local res=$?
    v=$res 
    wget -q "$url" -O -|grep -n 'data-srcset="https://cdn.mos.cms.futurecdn.net/'  |
    cut -d\" -f24 |sed -n "$v"p |while read id
    do 
        echo "Downloading"  `title_download`".jpg";
        echo "Image Downloaded"
        wget -q -c "$id";
    done
}

###multipleimage_download function
function multipleimage_download()
{
    date_calulation
    local res=$?
    v=$res 
    
    wget -q "$url" -O -|grep -n 'data-srcset="https://cdn.mos.cms.futurecdn.net/'  |
    cut -d\" -f24 |sed -n "1,$v"p |while read id
    do 
        echo "Downloading multiple images";
        echo "Image Downloaded"
        wget -q -c "$id";
        
    done
    
    
}

### Using a case statement, and taking the 1st command line argument, it will look for the 1st argument
### and call to that particular function

### Example of the commands for each of the inputs are,
### singleimage_download; i.e. ./spacecom.sh -d 2020-01-31
### explanationViewer; i.e. ./spacecom.sh --view 2020-01-31 
### detailViewer; i.e. ./spacecom.sh s -dt 2020-01-31
### multipleimage_download; i.e. ./spacecom.sh --r 2020-01-31

case $1 in
    "-d")
        guide
        checksite_availability
        singleimage_download $2
        echo -e "\nFinished.";;
    "--view")
        guide
        echo -e "\nFinished.";;
    "-t")
        guide
        checksite_availability
        date_calulation
        multipleimage_download
        echo -e "\nFinished.";;
    "--r")
        guide
       echo -e "\nFinished.";;
    *)
        guide
        echo -e "\nUnknown input.";;
        
esac