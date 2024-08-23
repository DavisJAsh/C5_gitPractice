#!/bin/bash

# Create your own text-based "Create Your Own Adventure story" using Bash scripting. 
# You will apply your knowledge of loops and conditionals to make the story interactive: 
# This allows the player to make choices that affect the outcome.

while true; do
    # Variables start as false; the game will satisfy each task
    homework_done=false
    chores_done=false
    dog_fed=false
    parental_controls=false

    # User gets the instructions and chooses their video game "prize"
    echo "Welcome to 'The Chore Champion'!"
    echo " "
    echo "Picture this: you are a younger version of yourself and want nothing more than to play your video game."
    echo "But first, your mom says you have to deal with homework, chores, and your dog. You might even need to crack the parental controls!"
    echo " "
    sleep 2
    echo "What video game would you like to play?" 
    read game
    clear

    while true; do
        # The user will need to select an activity to start the game. Lists the tasks to choose from.
        echo "What do you want to do?"
        echo " "
        echo "1 - Do your homework"
        echo "2 - Do your chores"
        echo "3 - Feed the dog"
        echo "4 - Bypass parental controls"
        echo "5 - Play $game"
        echo "6 - Give up and go to bed"
        echo " "
        sleep 1
        echo "Enter your choice (1-6): "
        read choice

        # Validate that the input, confirms user can only enter numbers 1-6
        if ! [[ "$choice" =~ ^[1-6]$ ]]; then
            echo "Sorry, you must choose a number between 1 and 6."
            sleep 2
            clear
            continue
        fi
        
        #Conditional statements to handle user choice, each statement will check if the task is already done.
        # User will have to satisfy all the below tasks, choosing the task will turn the variable from false (declared at the start) to true.
        if [ "$choice" = 1 ]; then
            if [ "$homework_done" = true ]; then
                echo "Your homework is already complete! Pick another task!"
            else
                echo "You walk over to the kitchen table and finish your homework."
                homework_done=true
            fi
        sleep 4
        clear
        elif [ "$choice" = 2 ]; then
            if [ "$chores_done" = true ]; then
                echo "You already washed the dishes and cleaned your room! Pick another task!"
            else
                echo "You go check the sink, then clean any dishes that are there. Then you pick up the clothes off the floor in your bedroom."
                chores_done=true
            fi
        sleep 4    
        clear
        elif [ "$choice" = 3 ]; then
            if [ "$dog_fed" = true ]; then
                echo "Oh NO! Don't over feed you dog! He already enjoyed his meal! On to the next task!"
            else
                echo "You grab a cup of doggie kibble and fill his bowl. Then you give him fresh water."
                dog_fed=true
            fi
        sleep 4
        clear
        elif [ "$choice" = 4 ]; then
            if [ "$parental_controls" = true ]; then
                echo "Parental controls are for suckers! You broke them already #Winning"
            else
                echo "You brute force that 4-character pin to figure out how to bypass the parental controls that are blocking you from playing ESRB rated T for teen games."
                parental_controls=true
            fi
        sleep 4
        clear

        # Checking all tasks are complete to allow the user to play their game.
        elif [ "$choice" = 5 ]; then
            if [ "$homework_done" = true ] && [ "$chores_done" = true ] && [ "$dog_fed" = true ] && [ "$parental_controls" = true ]; then
                echo "Yaaaasssssss.....You're winning.... you got all your tasks done for the day!"
                echo "You can finally play $game!"
                break    #exists loop allows user to choose to play again
            else
                echo "You can only play $game once you have finished all your tasks for the day, get to work!"
            fi
        sleep 4
        clear
        elif [ "$choice" = 6 ]; then
            echo "You're just too tired to be bothered with any of it. You decide to go to bed."
            break      #exists loop allows user to choose to play again
        fi
    done

    sleep 6
    clear
    echo "Do you want to play again? (yes/no)" #Asks user to play again, then resets the game or exits
    read play_again
    if [ "$play_again" != "yes" ]; then
        echo "See ya next time!"
        exit
    fi
done
