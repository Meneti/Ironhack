# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ironhack = Project.create!(name: 'Ironhack', description: 'Ironhack is a...')
time_tracking_app = Project.create!(name: 'Time tracking app')
recipes = Project.create!(name: 'Recipes', description: 'Track my favorite recipes')

ironhack.time_entries.create(hours: 1, minutes: 32)
ironhack.time_entries.create(hours: 3, minutes: 32)
ironhack.time_entries.create(hours: 7, minutes: 32)
ironhack.time_entries.create(hours: 9, minutes: 32)
ironhack.time_entries.create(hours: 8, minutes: 32)


