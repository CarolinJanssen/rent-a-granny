# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Granny.destroy_all
Activity.destroy_all if Rails.env.development?

puts "Creating activity"
drawing = Activity.create(name: "Drawing")
reading = Activity.create(name: "Reading")
swimming = Activity.create(name: "Swimming")
doing_homework = Activity.create(name: "Doing Homework")
crafting = Activity.create(name: "Crafting")
dancing = Activity.create(name: "Dancing")
playground = Activity.create(name: "Playground")
puts "Finished"

# p 'seeds done right'

Granny.create!(
  first_name: "Eunice",
  last_name: "Blakely",
  district: "Kreuzberg",
  description: "A sensible octogenarian.",
  important_notes: "Bad back",
  price: 20,
  age: 80,
  activity: reading
  )

Granny.create!(
  first_name: "Meryl",
  last_name: "Streep",
  district: "Mitte",
  description: "Grand dame of the Stage and Screen who looks after toddlers in her spare time.",
  important_notes: "Please don't ask me to lift more than 5 kg, and please don't ask me to reprise any iconic rôles for your private amusement.",
  price: 23,
  age: 80,
  activity: doing_homework
  )

Granny.create!(
  first_name: "Rosemary",
  last_name: "Darcey-Grynnell DBE",
  district: "Mitte",
  # activity: "Doing Homework",
  description: "Strict disciplinarian and Dame Commander of the Order of the British Empire",
  important_notes: "No funny stuff!",
  price: 25,
  age: 91,
  activity: crafting
  )

Granny.create!(
  first_name: "Queen Elisabeth",
  last_name: " Alexandra Mary Windsor II",
  district: "Mitte",
  # activity: "Crafting",
  description: "Kind, gentle, and can get any stain out.",
  important_notes: "Apartment is very small, limit 2 children.",
  price: 10,
  age: 76,
  activity: playground
  )

Granny.create!(
  first_name: "Jane",
  last_name: "Fonda",
  district: "Kreuzberg",
  # activity: "Swimming",
  description: "Jazzercise for tots!",
  important_notes: "No boys, please",
  price: 49,
  age: 89,
  activity: reading
  )

Granny.create!(
  first_name: "The Baronness",
  last_name: "von Freyburg",
  district: "Kreuzberg",
  # activity: "Reading",
  description: "I will look after your children with care and diligence.",
  important_notes: "My legs are tricky!",
  price: 25,
  age: 88,
  activity: crafting
  )



# granny_1.activity = drawing


puts "Finished"
# granny_2.save!

# granny_1.user = user_1
# granny_1.save!


# user_1 = User.create(first_name: Huey)
