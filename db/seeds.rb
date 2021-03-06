# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

Ingredient.destroy_all

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
url_reader = open(url).read
scraper = JSON.parse(url_reader)

ingredients = scraper['drinks'] # Array of hashes
ingredients.each do |ingredient|
  new_ingredient = Ingredient.new(name: ingredient['strIngredient1'])
  new_ingredient.save!
end
