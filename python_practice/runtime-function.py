#!/bin/python

# Write a Python function that calculates the uptime percentage of a service based on the total number of hours and the number of hours the service was down. 
# The function should take 2 parameters (total hours and down hours, inputted when the function is run). 
# Lastly, the function should return the uptime percentage rounded to two decimal places. 


#Ask the user input numbers for up and down time
a = int(input("How many Total hours has Student Instance been up?"))
b = int(input("How many hours has Student Instance been down?"))

#create the funtion to calculate the percentage of time the service was down
def uptime(a, b):
    percent = (a - b)/a*100
    print(percent)

    #This return statment allows the calculation to round to the second decimal.
    return round(percent, 2)

#Displays the answer to the problem
print(uptime(a, b)) 