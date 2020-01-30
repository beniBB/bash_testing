### Done For CSP2101 Scripting Language
### By Benitro

### bash script called Rectangle.sh that will 
### obtain the dimensions of rectangles from a 
### rectangle.txt file, Instead of printing the 
### output onto the screen, send the output 
### to sed and modify it to print in the format:
#!/bin/bash

### sed functions 
### Delete area column and 
### creating new txt file and save the other columns

sed -r 's/\S+//4' rectangle.txt > new_rectangle.txt

### Adding formatting names to new file (created)

sed -e ' 
s/ /Name:/; 
s/,/ Height:/; 
s/,/ Width:/1; 
s/,/ Colour:/1' new_rectangle.txt