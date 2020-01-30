### Done For CSP2101 Scripting Language
### By Benitro
### A Functions To Develop An Interactive Guessing Game  
### To Guess The Age Of A Person (Bunty)


#!/bin/bash

### Welcome A Person To Game
welcome()
{
    echo "Welcome To Age Guessing Game"
    echo "I Am Bunty"
    echo "If Your Are Clever, Guess My Age!!!! "
    echo "Guess Between 20-70 Years"
}

### Generate Random Number Between 20-70
random()
{
    AGE=$((20 + RANDOM % 70))

    ### Check The Random Value By Enabling This 
    #echo "Random Number is $AGE"
}
     

### Play Game
guess()
{
    while :
    do    
        read -p "Enter Guess Age: " guess
          if (( $guess < AGE ));then 
              echo "Answer Is High"
              echo "Try Again"
          elif (( $guess == AGE ));then
              echo "Answer Is Correct"
              echo "Congrats"
              echo "Thank YOU! BYE!!!"
              exit 0
          elif (( $guess > AGE ));then 
              echo "Answer Is Low"
              echo "Try Again"
          fi
              echo "To Exit [hit CTRL+C to stop ]"  
    done          
}

### Calling All The Functions 
welcome
random
guess