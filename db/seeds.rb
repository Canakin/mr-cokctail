require 'open-uri'

puts 'first destroy'
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all
Review.destroy_all

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
ingtwenty = Ingredient.create(name: "coca cola")
ingtwentyone = Ingredient.create(name: "whiskey")

puts 'ingredients created'

fileone = URI.open('https://res.cloudinary.com/ds2odybte/image/upload/v1605617775/Can%20Photos/mojito_rozvpv.jpg')
filetwo = URI.open('https://res.cloudinary.com/ds2odybte/image/upload/v1605618902/Can%20Photos/Bloody_Mary_jpg8vy.jpg')
filethree = URI.open("https://res.cloudinary.com/ds2odybte/image/upload/v1605619278/Can%20Photos/Sex_on_the_beach_zs4dtz.jpg")
filefour = URI.open("https://res.cloudinary.com/ds2odybte/image/upload/v1605619757/Can%20Photos/Margarita_ay3zjy.jpg")
filefive = URI.open("https://res.cloudinary.com/ds2odybte/image/upload/v1605619839/Can%20Photos/Pina_Collada_fs5qch.jpg")

cocktailone = Cocktail.create(name: 'Mojito')
cocktailtwo = Cocktail.create(name: 'Bloody Mary')
cocktailthree = Cocktail.create(name: 'Sex on the beach')
cocktailfour = Cocktail.create(name: 'Margarita')
cocktailfive = Cocktail.create(name: 'Pina Colada')

puts 'cocktails are created'

cocktailone.photo.attach(io: fileone, filename: 'mojito_rozvpv.jpg', content_type: 'image/jpg')
cocktailtwo.photo.attach(io: filetwo, filename: 'Bloody_Mary_jpg8vy.jpg', content_type: 'image/jpg')
cocktailthree.photo.attach(io: filethree, filename: 'Sex_on_the_beach_zs4dtz.jpg', content_type: 'image/jpg')
cocktailfour.photo.attach(io: filefour, filename: 'Margarita_ay3zjy.jpg', content_type: 'image/jpg')
cocktailfive.photo.attach(io: filefive, filename: 'Pina_Collada_fs5qch.jpg', content_type: 'image/jpg')

reviewone = Review.create(content: 'Very good drink', rating: 5, cocktail: cocktailone)
reviewtwo = Review.create(content: 'Bloody Mary is awesome', rating: 4, cocktail: cocktailtwo)
reviewthree = Review.create(content: 'One of the best', rating: 4, cocktail: cocktailthree)
reviewfour = Review.create(content: 'Amazing drink', rating: 4, cocktail: cocktailfour)
reviewfive = Review.create(content: 'Cool drink', rating: 4, cocktail: cocktailfive)

puts 'review are created'

doseone = Dose.create(description: '1 1/2 oz', ingredient: ingone, cocktail: cocktailone)
dosetwo = Dose.create(description: '1 oz', ingredient: ingtwo, cocktail: cocktailone)
dosethree = Dose.create(description: '6 leaves', ingredient: ingfive, cocktail: cocktailone)
dosefour = Dose.create(description: '2 teaspoons', ingredient: ingthree, cocktail: cocktailone)
dosefive = Dose.create(description: '1 tablespoon', ingredient: ingfour, cocktail: cocktailone)
dosesix = Dose.create(description: '1 1/2 oz', ingredient: ingsix, cocktail: cocktailtwo)
doseseven = Dose.create(description: '3 oz', ingredient: ingeight, cocktail: cocktailtwo)
dosesnine = Dose.create(description: '1/2 oz', ingredient: ingseven, cocktail: cocktailtwo)
doseten = Dose.create(description: '1 1/3 oz', ingredient: ingfourteen, cocktail: cocktailthree)
doseleven = Dose.create(description: '2/3 oz', ingredient: ingseventeen, cocktail: cocktailthree)
dosetwelve = Dose.create(description: '1 oz', ingredient: ingone, cocktail: cocktailfour)
dosethirteen = Dose.create(description: '2 oz', ingredient: ingtwelve, cocktail: cocktailfour)
dosefourteen = Dose.create(description: '1 oz volume', ingredient: ingthirteen, cocktail: cocktailfour)
dosefifteen = Dose.create(description: '1 oz', ingredient: ingnineteen, cocktail: cocktailfive)
doseseventeen = Dose.create(description: '1 oz', ingredient: ingeightteen, cocktail: cocktailfive)

puts 'new db set'
