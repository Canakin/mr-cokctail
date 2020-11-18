# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'first destroy'
Ingredient.destroy_all
Cocktail.destroy_all

puts 'destroying all'

ingone = Ingredient.create(name: "lime juice")
ingtwo = Ingredient.create(name: "rum")
ingthree = Ingredient.create(name: "sugar")
ingfour = Ingredient.create(name: "soda")
ingfive = Ingredient.create(name: "mint")
ingsix = Ingredient.create(name: "vodka")
ingseven = Ingredient.create(name: "lemon juice")
ingeight = Ingredient.create(name: "tomato juice")
ingnine = Ingredient.create(name: "salt")
ingten = Ingredient.create(name: "pepper")
ingeleven = Ingredient.create(name: "tabasco")
ingtwelve = Ingredient.create(name: "tequila")
ingthirteen = Ingredient.create(name: "cointreau")
ingfourteen = Ingredient.create(name: "orange juice")
ingfifteen = Ingredient.create(name: "vodka")
ingsixteen = Ingredient.create(name: "cranberry juice")
ingseventeen = Ingredient.create(name: "peach")
ingeightteen = Ingredient.create(name: "pineapple juice")
ingnineteen = Ingredient.create(name: "coconut cream")

cocktailone = Cocktail.create(name: 'Mojito')
cocktailtwo = Cocktail.create(name: 'Bloody Mary')
cocktailthree = Cocktail.create(name: 'Sex on the beach')
cocktailfour = Cocktail.create(name: 'Margarita')
cocktailfive = Cocktail.create(name: 'Pina Colada')

doseone = Dose.create(description: '1 1/2 oz: volume unit for liquid ingredient', ingredient: ingtwo, cocktail: cocktailone)
dosetwo = Dose.create(description: '1 oz: volume unit for liquid ingredient', ingredient: ingone, cocktail: cocktailone)
dosethree = Dose.create(description: '6 leaves: amount of leaves that should be put', ingredient: ingfive, cocktail: cocktailone)
dosefour = Dose.create(description: '2 teaspoon: volume of sugar added to cocktail', ingredient: ingthree, cocktail: cocktailone)
dosefive = Dose.create(description: '1 tablespoon: volume unit for liquid ingredient', ingredient: ingfour, cocktail: cocktailone)

puts 'new db set'
