#!/bin/bash

# Create a script that will present the following menu to a user to choose which system info process they would like to view. 
# The script should continue to ask the user to choose from the menu until they want to exit.

while true; do
    echo "Welcome to the System Info app!"
    echo " "
    echo "Would you like to check a system resource? (yes/no)"
    read answer

    if [ "$answer" = "yes" ]; then
    sleep 1
        echo "1 - IP Address"
        echo "2 - Current Username"
        echo "3 - CPU Usage"
        echo "4 - Memory Usage"
        echo "5 - Top 5 CPU Processes"
        echo "6 - Top 5 Running Processes"
        echo "7 - Network Connectivity"
        echo "8 - Exit"
        echo " "
        echo "Make a selection (1-8):"
        read choice

#Starting the conditional statements to handle user choice for each selection using "if" statements
#1. IP Addresses: 
        if [ "$choice" = 1 ]; then
            ip_address=$(hostname --ip-address)
            public_ip=$(host myip.opendns.com resolver1.opendns.com | awk '{print $4}')
            echo "Your private IP is $ip_address, and you public IP is $public_ip"
    sleep 3
    clear

#2. Current User:
        elif [ "$choice" = 2 ]; then
            current_user=$(whoami)
            echo "You are logged in as: $current_user"
    sleep 3
    clear

#3. CPU Usage Information
        elif [ "$choice" = 3 ]; then
            cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
            echo "CPU Usage: $cpu_usage%"
    sleep 3
    clear

#4. Memory Information [NR == 2 <--- means only the second line of the selection]
        elif [ "$choice" = 4 ]; then    
            mem_free=$(free -m | awk 'NR == 2 {print $4}')
            mem_used=$(free -m | awk 'NR == 2 {print $3}')
            mem_total=$(free -m | awk 'NR == 2 {print $2}')
            echo "There is $mem_free MB memory free, $mem_used MB memory in use, and $mem_total MB memory Total."
    sleep 4
    clear

#5. Top 5 Memory Processes - produces a table that sorts the the data from "ps" in decending order and lists the top 5 processes
        elif [ "$choice" = 5 ]; then
            top_mem=$(ps aux --sort=-%mem | head -n 6 | awk '{print $2, $4, $11}')
            echo "Below are the Top 5 Memory processes, currently running:"
            echo " "
            echo "$top_mem"
    sleep 6
    clear

#6. Top 5 CPU Processes Same as Memory process above.
        elif [ "$choice" = 6 ]; then
            top_cpu=$(ps aux --sort=-%cpu | head -n 6 | awk '{print $2, $3, $11}')
            echo "Below are the Top 5 Memory processes, currently running:"
            echo " "
            echo "$top_cpu"
    sleep 6
    clear

#7. Network Connectivity #ask user for a website or IP address to connect to first and then produce a statement regarding the network connection, ex answer: "It took 7ms to connect to www.google.com and there was 0% data packet loss."
        elif [ "$choice" = 7 ]; then
            echo "This selection choice is not finished yet"
    sleep 2
    clear

#8. Allows the user to quit the app from the menu.
        elif [ "$choice" = 8 ]; then
            echo "See ya next time!"
            break
            exit
        fi
    else
        echo "Sorry wrong answer!"
	sleep 2
	clear
	continue
    fi
done
