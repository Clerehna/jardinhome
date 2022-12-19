# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'db clean 🧹🧹🧹'
Prestation.destroy_all
User.destroy_all
Buying.destroy_all
puts 'Creation of users 🧑🏻🧑🏿'

kevin = User.create!(
  first_name: 'Kevin',
  last_name: 'Chanloup',
  email: 'kevinchanloup@gmail.com',
  password: 'azerty',
  admin: true
)

puts '1 new user'
