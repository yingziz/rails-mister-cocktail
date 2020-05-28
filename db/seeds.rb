# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cocktails = [{ name: 'Mojito' }, { name: 'Bloody Mary' }, { name: 'Sex on the Beach'}, { name: 'Margarita'}, { name: 'Pina Colada'}]

cocktails_db = []
cocktails.each do |cocktail|
  cocktails_db << Cocktail.create(cocktail)
end

ingredients = [{ name: 'Mint' }, { name: 'Vodka' }, { name: 'Rhum'}, { name: 'Tequila'}, { name: 'Orange Juice'}, { name: 'Tomato Juice'}]
ingredients_db = []
ingredients.each do |ingredient|
  ingredients_db << Ingredient.create(ingredient)
end

puts 'create doses'

Dose.create(
  description: '6 leaves',
  cocktail_id: cocktails_db[1],
  ingredient_id: ingredients_db[1]
)

Dose.create(
  description: '1.5 oz',
  cocktail_id: cocktails_db[1],
  ingredient_id: ingredients_db[3]
)

Dose.create(
  description: '4.5 cl',
  cocktail_id: cocktails_db[2],
  ingredient_id: ingredients_db[2]
)

puts 'finished'
