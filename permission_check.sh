#!/bin/bash

#Asking the user to select a file then checking a file to see what permissions it has.

while true; do
echo "Select a file you want to check permissions for?"
read file_name

ls -l $file_name

sleep 2

echo "Would you like to try another file? (yes/no)"
read answer

if [ "$answer" != "yes" ]; then
echo "Okay Bye"
exit
fi

done
