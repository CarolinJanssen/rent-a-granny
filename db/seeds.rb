require "open-uri"

puts "Cleaning database"
Appointment.destroy_all
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


granny1 = Granny.create!(
  first_name: "Eunice",
  last_name: "Blakely",
  district: "Kreuzberg",
  description: "A sensible octogenarian.",
  important_notes: "Bad back",
  price: 20,
  age: 80,
  activity: reading
  )
puts "Tested!"
granny2 = Granny.create!(
  first_name: "Meryl",
  last_name: "Streep",
  district: "Mitte",
  description: "Grand dame of the Stage and Screen who looks after toddlers in her spare time.",
  important_notes: "Please don't ask me to lift more than 5 kg, and please don't ask me to reprise any iconic rôles for your private amusement.",
  price: 23,
  age: 80,
  activity: doing_homework
  )

granny3 = Granny.create!(
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

granny4 = Granny.create!(
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

granny5 = Granny.create!(
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

granny6 = Granny.create!(
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

puts "finished"

puts "Adding pictures"
file = URI.open('https://www.newtimes.co.rw/sites/default/files/styles/mystyle/public/main/articles/2015/11/18/1447873393o-GRANDPARENTS-facebook.jpg')
granny1.photo.attach(io: file, filename: 'test.jpg', content_type: 'image/jpg')
# image_1 = File.open('/Users/chora/code/elmochuelo/rent-a-granny/app/assets/images/
# grandmother1.jpg')
file2 = URI.open('https://s3-eu-west-1.amazonaws.com/iya-ghost-prod.inyourarea.co.uk/2017/12/Gladys-Goodwin.jpg')
granny2.photo.attach(io: file2, filename: 'test2.jpg', content_type: 'image/jpg')

file3 = URI.open('https://i.dailymail.co.uk/i/pix/2012/08/17/article-0-149777C7000005DC-552_634x416.jpg')
granny3.photo.attach(io: file3, filename: 'test3.jpg', content_type: 'image/jpg')

file4 = URI.open('https://www.cheatsheet.com/wp-content/uploads/2020/02/Queen-Elizabeth-II-1-1024x683.jpg')
granny4.photo.attach(io: file4, filename: 'test4.jpg', content_type: 'image/jpg')

file5 = URI.open('https://vesti.kz/userdata/news/news_171678/crop4_b/photo_22212.jpg')
granny5.photo.attach(io: file5, filename: 'test5.jpg', content_type: 'image/jpg')

file6 = URI.open('https://lotsahelpinghands.com/wp-content/uploads/2015/07/help-children-learn-600.jpg')
granny6.photo.attach(io: file6, filename: 'test6.jpg', content_type: 'image/jpg')

puts "Finished!"

# granny_1.activity = drawing


# granny_2.save!

# granny_1.user = user_1
# granny_1.save!


# user_1 = User.create(first_name: Huey)
