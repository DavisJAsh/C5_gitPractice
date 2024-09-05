#!/bin/python

#Syntax: request.method(url,params={key:value}, args)

import requests

url = "https://livescore6.p.rapidapi.com/matches/v2/list-live"

querystring = {"Category":"tennis","Timezone":"-7"}

headers = {
	"x-rapidapi-key": "427f119252msh2c4e9a6f9a96b5ap17ff61jsn7368a50c370b",
	"x-rapidapi-host": "livescore6.p.rapidapi.com"
}

response = requests.get(url, headers=headers, params=querystring)

raw=response.json()

for items in raw["Stages"]:
    print({items.get("Sid")})

#print(raw)

#print(raw.keys())
#print(raw.items())
#print(raw.values())

#json would convert it to a dictionary. 'Text' is the raw data.