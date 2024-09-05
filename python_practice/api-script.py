#!/bin/python

# Choose an API from RapidAPI that interests you—make sure it has a free tier and simple authentication. 
# Write a Python script that makes a request to your selected API, using the appropriate endpoint and parameters to retrieve data. 
# Save the response data to a variable, and handle it as JSON to work with nested structures. 
# Extract a specific item from the nested dictionary in the response, and print a statement that meaningfully displays this information. 
# Have fun exploring the data you retrieve!


#API request to import the requested data - Hashtag Generator for Instagram
import requests

url = "https://instagram-hashtags.p.rapidapi.com/"

querystring = {"keyword":"cake"}

headers = {
	"x-rapidapi-key": "427f119252msh2c4e9a6f9a96b5ap17ff61jsn7368a50c370b",
	"x-rapidapi-host": "instagram-hashtags.p.rapidapi.com"
}

response = requests.get(url, headers=headers, params=querystring)

# Extract the data and put it into json format, name this dictionary
hashtags=(response.json())

#Extracting the hashtag strings from the dictionary
hashtag_items=[item for item in hashtags if item['keyword'].startswith('#')]

#Sorting the hashtag data by most used in the last hour.  - key-lambda x: x['post_last_hr'] - tells the sorted function to sort by posts. reverse is decending order.
sorted_tags=sorted(hashtag_items, key=lambda x: x['post_last_hr'], reverse=True)

#Print all the hashtag data and how many times users used that hashtag in the last hour
print("Here are the current hashtags being used on Instagram related to cake!")
print("They are sorted in descending order by how many users have posted them in the last hour!")
print(" ")

#Loops through all the data to extract the hashtage and the related number of posts. Prints a list of those items
for item in sorted_tags:
    print(f"{item['keyword']}, Posts: {item['post_last_hr']}")
