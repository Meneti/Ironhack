# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



sandwich_1 = Sandwich.create!(name: "Turkey", bread_type: "Rye")
sandwich_2 = Sandwich.create!(name: "Tuna", bread_type: "White")
sandwich_3 = Sandwich.create!(name: "Italian", bread_type: "Hoagie")


ingredient_1 = Ingredient.create!(name: "Mustard", calories: "5")
ingredient_2 = Ingredient.create!(name: "Cheese", calories: "50")
ingredient_3 = Ingredient.create!(name: "Tomato", calories: "20")


sandwich_1.ingredients.push(ingredient_1)
sandwich_2.ingredients.push(ingredient_1, ingredient_2)
sandwich_3.ingredients.push(ingredient_1, ingredient_2, ingredient_3)
