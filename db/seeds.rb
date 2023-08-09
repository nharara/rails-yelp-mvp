# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Creating 5 restaurants with reviews...'
5.times do
  Restaurant.create(
    name: Faker::JapaneseMedia::StudioGhibli.movie,
    phone_number: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORIES.sample
  )
end
puts 'Created 5 restaurants!'
