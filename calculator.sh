#!/bin/bash
 
 #Objective: To create an interactive calculator that add, subtract, multiply and divide based on user input.
 #User will provide two intergers and which operation they want to use.
 #Calculator will display the result to the user. Also making sure there is a response for wrong inputs.

while true; do
 #Asking the user to provide integers. Selecting the first number.
 echo "Welcome to the Bash Calculator. Please provide your first number:"
    read first_number
 echo "You provided $first_number. Is this correct? (yes/no)"
    read answer

 if [ "$answer" != "yes" ]; then  
    echo "Please retype you first number:"
    read first_number
fi

#Asking the user for the second number
  echo "Please provide your second number:"
    read second_number 
  echo "You provided $second_number. Is this correct? (yes/no)"
    read answer2

 if [ "$answer2" != "yes" ]; then 
  echo "Please retype your second number:"
  read second_number
fi

#Asking the user to confirm the operation
echo "What would you like to do with these numbers? The options are: add, subtract, multiply or divide."
    read operation
echo "You chose $operation. Is this correct? (yes/no)"
    read answer3

 if [ "$answer3" != "yes" ]; then 
  echo "Please reselect an operation. The options are: add, subtract, multiply or divide."
    read operation
fi

calculate() {   #Creates the calculator function
echo "Calculating $operation operation between $first_number & $second_number "

sleep 1 #Adds a pause
echo "." 
sleep 1
echo ".."
sleep 1
echo "..."
sleep 1

 case "$operation" in #Chooses which to use based on user input

 #Add's the numbers together
   "add") 
  final_answer=$(( first_number + second_number )) 
    echo "Your answer equals $final_answer!";;

#Subtracts first number from second number
  "subtract") 
  final_answer=$(( first_number - second_number ))
    echo "Your answer equals $final_answer!" ;;

#multiplies first number from second number
   "multiply") 
  final_answer=$(( first_number * second_number ))
    echo "Your answer equals $final_answer!";;
    
#Divides first number from second number
  "divide") 
  final_answer=$(( first_number / second_number ))
    echo "Your answer equals $final_answer!";;

esac
}

calculate  #Calling the function

sleep 1 #Adds a pause
echo "Would you like to try again? (yes/no)"
    read start_again

if [ "$start_again" != "yes" ]; then
        echo "Ah, Buh-bye now"
        exit                  #Exists the calculator
fi
done
