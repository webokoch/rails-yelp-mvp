# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
belgian = { name: "Belgian Waffles", address: "Mitte", phone_number:"0293-2433", category:"belgian" }
pizza = { name: "Hardcore Pizza", address: "Friedrichshain", phone_number:"0293-2346", category:"italian" }
chinese = { name: "Peking", address: "Kreuzberg", phone_number:"0293-5664", category:"chinese" }
japanese = { name: "Tokyo Sushi", address: "Charlottenburg", phone_number:"0293-3363", category:"japanese" }
french = { name: "Vive la France", address: "Moabit", phone_number:"0293-2334", category:"french" }

[belgian, pizza, chinese, japanese, french].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
