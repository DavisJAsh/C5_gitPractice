#!/bin/python

#Create a Python script that counts the number of items (files and directories) in a specified directory (take dir as input). 
# The script should display the total number of items (both files and directories) present in the specified directory. 

# Bonus Modify your script to count the number of files and directories separately. Hint: use the os module

#importing this function to be able to interact with the operating system
import os

#Ask the user to select a directory. Save the user selection in variable
directory = input("Let's count the number of itens in a directory? Select a directory:")
dir_list = os.listdir(f"/home/ubuntu/{directory}")
print(dir_list)