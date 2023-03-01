# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p "Clean DB"

Restaurant.destroy_all

p "populating DB"

5.times do
  r = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: "+27 #{rand(10**9)}",
    category: %w[chinese italian japanese french belgian].sample
  )
  p "Restaurant id: #{r.id} was created"
end
