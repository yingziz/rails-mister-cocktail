# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

cocktails = [{ name: 'Mojito' }, { name: 'Bloody Mary' }, { name: 'Sex on the Beach'}, { name: 'Margarita'}, { name: 'Pina Colada'}]

cocktails_db = []
cocktails.each do |cocktail|
  cocktails_db << Cocktail.create!(cocktail)
end

ingredients = [{ name: 'Mint' }, { name: 'Vodka' }, { name: 'Rhum'}, { name: 'Tequila'}, { name: 'Orange Juice'}, { name: 'Tomato Juice'}]
ingredients_db = []
ingredients.each do |ingredient|
  ingredients_db << Ingredient.create!(ingredient)
end

puts 'create doses'

doses = [ { description: '6 leaves', cocktail: cocktails_db[1], ingredient: ingredients_db[1]},
  { description: '1.5 oz', cocktail: cocktails_db[1], ingredient: ingredients_db[3]},
  { description: '4.5 cl', cocktail: cocktails_db[3], ingredient: ingredients_db[3]},
  { description: '9 cl', cocktail: cocktails_db[2], ingredient: ingredients_db[5]},
  { description: '1.33 oz', cocktail: cocktails_db[3], ingredient: ingredients_db[2]},
  { description: '1.33 oz', cocktail: cocktails_db[3], ingredient: ingredients_db[5]},
  { description: '2 cl', cocktail: cocktails_db[4], ingredient: ingredients_db[4]}]

doses.each do |dose|
  Dose.create!(dose)
end

puts 'finished'
