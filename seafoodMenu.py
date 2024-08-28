#crab, lobsters, scallops, shrimp, 
#apps, entrees, desserts

#Seafood Menu 
#Apps: Name, price, description, Vegan: Yes or No (True/false)
#Entrees: Name, price, description, Vegan (true/false)
#Desserts: Name, price, description, Vegan (True/False)

#appDictionary
Menu={
        "AppMenu": {
                 "Name": ["Hush puppies", "Clam Chowder", "Shrimp Cocktail"],
                 "price": [8.00, 13.00, 10.00],
                 "description": ["fried corn meal fritters", "New England Style Clam Chowder", "Steamed Jumbo Shrimp with cocktail sauce"],
                 "Vegan": [True, False, False]
            },

        "Entree":{
            "Name": ["Snow Crab Boil", "Lobster Linguine", "Whole Maine Lobster"],
            "price": [25.00, 30.00, "MP"],
            "description": ["1lb of snow crab with corn and potatoes", "Buttered Lobster in a cream sauce in Linguine with a bed of steamed broccoli", "1 1/2lb of lobster with baked potato and mixed veggies"],
            "Vegan": [False, False, False]       
        },

        "Dessert": {
            "Name": ["Canoli", "Apple Pie", "Mochi Ice Cream"],
            "price": [5.00, 8.00, 6.00],
            "description": ["Marscapone cheese with chocolate chips in a fried pastry shell", "Macintosh Apples and Cinnamon in a flakey buttery crust with a scoop of vanilla bean ice cream on top", "Vanilla with Red bean,"],
            "Vegan": [False, True, False]
        } 
}