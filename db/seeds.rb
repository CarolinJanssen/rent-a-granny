# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity.destroy_all if Rails.env.development?
drawing = Activity.create(name: "Drawing")
Activity.create(name: "Reading")
Activity.create(name: "Swimming")
Activity.create(name: "Doing Homework")
Activity.create(name: "Crafting")
Activity.create(name: "Dancing")
Activity.create(name: "Playground")

# p 'seeds done right'
Granny.destroy_all

granny_1 = Granny.new(first_name: "Eunice", last_name: "Blakely", district: "Mitte", description: "Drawing", important_notes: "Bad back", price: 20, age: 80)

granny_2 = Granny.new(first_name: "Meryl", last_name: "Streep", district: "Mitte", description: "Reading", important_notes: "Please don't ask me to lift more than 5 kg, please.", price: 20, age: 72)

granny_3 = Granny.new(first_name: "Rosemary", last_name: "Darcey-Grynnell DBE", district: "Mitte", description: "Doing Homework", important_notes: "No funny stuff!", price: 25, age: 91)

granny_4 = Granny.new(first_name: "Elisabeth", last_name: "Higgins", district: "Friedrichshain-Kreuzberg", description: "Crafting", important_notes: "Apartment is very small, limit 2 children.", price: 10, age: 76)

granny_5 = Granny.new(first_name: "Jane", last_name: "Fonda", district: "Schöneberg", description: "Swimming", important_notes: "No boys, please", price: 19, age: 89)

granny_6 = Granny.new(first_name: "Eunice", last_name: "Blake", district: "Mitte", description: "Reading", important_notes: "My legs are tricky!", price: 25, age: 88)

granny_1.activity = drawing

# granny_1.user = user_1
# granny_1.save!


# user_1 = User.create(first_name: Huey)
