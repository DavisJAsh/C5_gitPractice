#!/bin/python

#How do get he data for Oct 31 2024. Complete this 


import requests
url = "https://api.travelpayouts.com/v2/prices/month-matrix"
querystring = {"currency":"usd","show_to_affiliates":"true","origin":"NYC","destination":"LAX"}
headers = {'x-access-token': '2160a9f9ca2fa3d348f4a3a32504538e'}
response = requests.request("GET", url, headers=headers, params=querystring)

#print(response.json())
dictionary=(response.json())

#result = find_value(dictionary, '2024-10-31')
print(dictionary)
#print(dictionary["data"][0], [""])