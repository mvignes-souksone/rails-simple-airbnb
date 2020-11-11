# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
london_flat = { name: "Light & Spacious Garden Flat London", address: "7 Boundary St, London E2 7JE", description: "A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory", price_per_night: 120, number_of_guests: 2 }
paris_flat= { name: "Magnifique appartement dans Paris", address: "154 boulevard Haussmann, 75008 Paris", description: "Appartement dans le centre de Paris", price_per_night: 130, number_of_guests: 2 }
neuilly_flat = { name: "Appartement à Neuilly sur Seine", address: "13 rue Garnier, 92200 Neuilly sur Seine", description: "Grand appartement à Neuilly sur Seine", price_per_night: 190, number_of_guests: 4 }

[ london_flat, paris_flat, neuilly_flat ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"

