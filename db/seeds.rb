require 'json'
require 'open-uri'
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Cocktail.create(name: "Sky")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Marg")
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
us = open(url).read
user = JSON.parse(us)

n = 0
30.times do
  Ingredient.create(name: user['drinks'][n]['strIngredient1'] )
  n += 1
end
