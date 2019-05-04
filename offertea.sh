#!/bin/bash
#code adapted from user Abhijit Pritam Dutta
#https://stackoverflow.com/questions/50328268/shell-scripting-loop-yes-no/50328462#50328462
#every shell scripts starts with a shebang

#set count value =  zero
count=0

#The bash while loop is a control flow statement that allows code 
#or commands to be executed repeatedly based on a given condition. 
#which I will set at less than or equal to 4 in this instance 
#because the instructions for this assignment is to offer 4 more times
#after the first request for user input
#if the user input is n

while [ $count -le 4 ]
#while such a condition exists "do" the following
do
   read -p "Tea? y/n? " response
#this is the if/else statement
#"if" a particular condition is true - i.e. the response is y
# "then" execcute a particular command
#"else" execute a different one
#the second count command increments the prompts for user input
#by 1 each time 
   if [ "$response" == "y" ]; then
      echo "Great. I'll make tea now."
#The break statement is used to exit the current loop if answer = y 
     break
   else
      echo "Are you sure?"
      count=$((count+1))
#fi indicates the if statement no longer applies - it's if backwards!
   fi
#done to finish, note the indentation
done

