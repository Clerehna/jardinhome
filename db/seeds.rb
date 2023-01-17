# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'db clean 🧹🧹🧹'
User.destroy_all
Prestation.destroy_all
Buying.destroy_all
puts '___________________________'
puts 'The DB is cleaned !'
puts '___________________________'
puts 'Creation of users 👩🏻‍🦰👨🏼‍🦳👱🏽‍♀️🧑🏿'

kevin = User.create!(
  first_name: 'Kevin',
  last_name: 'Chanloup',
  email: 'kevinchanloup@gmail.com',
  password: 'azerty',
  admin: true
)

puts '1 new user 🧔🏻‍♂️'

charlene = User.create!(
  first_name: 'Charlene',
  last_name: 'Nicol',
  email: 'charln.nicol@gmail.com',
  password: 'azerty',
  admin: false
)

puts '1 new user 👩🏻'
puts 'users created 🔥'
puts '___________________________'
puts 'creation of prestations 😊'

prestation_1 = Prestation.create!(
  user: kevin,
  name: 'Arrachage de souche',
  description: 'oergfhioêrh',
  category: 'Entretien',
  price: 100
)

prestation_2 = Prestation.create!(
  user: kevin,
  name: 'Entretien du jardin',
  description: 'Gazon tout ça, tout ça',
  category: 'Entretien',
  price: 80
)

prestation_3 = Prestation.create!(
  user: kevin,
  name: 'Végétalisation',
  description: 'oergfhioêrh',
  category: 'Conception',
  price: 200
)

prestation_4 = Prestation.create!(
  user: kevin,
  name: 'Terrasse et pergola',
  description: 'oergfhioêrh',
  category: 'Conception',
  price: 1000
)

prestation_5 = Prestation.create!(
  user: kevin,
  name: 'Bassin',
  description: 'oergfhioêrh',
  category: 'Conception',
  price: 1000
)

prestation_6 = Prestation.create!(
  user: kevin,
  name: 'Création d\'une pergola chez M. Martin',
  description: '2 mois de travaux, des matières brut et naturel, qui se fond avec l\'apparence de la maison',
  category: 'Réalisation',
  price: 2000
)

prestation_7 = Prestation.create!(
  user: kevin,
  name: 'Création d\'un bassin chez Mme Langlois',
  description: '4 mois de travaux, de la pierre brutes et naturelles noires, ajout de végétation autour',
  category: 'Réalisation',
  price: 3000
)

puts 'prestations created 🔥'
puts '___________________________'
puts 'creation of buying 😊'

Buying.create!(
  start_date: DateTime.new(2023, 1, 10),
  end_date: DateTime.new(2023, 1, 31),
  user: charlene,
  prestation: prestation_1
)

puts 'Buying created 🔥'
puts '___________________________'
puts '🏁 End of the seed, thx for your patience 🤝'
puts '___________________________'
