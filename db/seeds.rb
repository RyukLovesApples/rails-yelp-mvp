# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
burger_house = {name: "Burger House", address: "58A Shoreditch High St, Chester E1 6PQ", category: "japanese"}
balan_deli = {name: "Balan Deli", address: "7 Balanstraße, München", category: "french"}
usagi = {name: "Usagi", address: "Sendlinger Tor", category: "belgian"}

[dishoom, pizza_east, burger_house, balan_deli, usagi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
