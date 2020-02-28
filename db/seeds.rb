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

granny_1 = Granny.new(first_name: "Eunice", last_name: "Blake", district: "Mitte", description: "Drawing", important_notes: "Bad back", price: 20, age: 80)
granny_1.activity = drawing
granny_1.user = user_1
granny_1.save!

# user_1 = User.create(first_name: Huey)
