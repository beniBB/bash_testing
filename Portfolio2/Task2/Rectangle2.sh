### Done For CSP2101 Scripting Language
### By Benitro

### bash script called Rectangle.sh that will 
### obtain the dimensions of rectangles from a 
### rectangle.txt file, Instead of printing the 
### output onto the screen,send the output 
### to sed and modify it to print in the format:
#!/bin/bash

OLDIFS="$IFS"
IFS=","
while read name height width area colour 
do
    echo -e "
    Name : \b$name: Height : \b$height: Width : \b$width: Colour : \b$colour "
done < "$1" 
IFS=$OLDIFS