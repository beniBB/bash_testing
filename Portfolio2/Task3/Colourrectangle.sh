### Done For CSP2101 Scripting Language
### By Benitro

### bash script called Colourrectangle.sh 
### that uses grep and regex to display only
### lines in rectangle.txt that are red in 
### colour and have an area > 100.

#!/bin/bash

### AWK function
### Using AWK Function and format 
awk -F',' '{print "Name:"$1,"Height:"$2,
"Width:"$3,"Area:"$4,"Color:"$5}' rectangle.txt > new_rectangle1.txt

### Use grep to find red colour and Area > 100
grep "[0-9][0-9][1-9][0-9]*" new_rectangle1.txt | grep "Red"