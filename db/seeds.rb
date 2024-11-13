# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create(
  name: "Le Petit Tokyo",
  address: "12 Rue de la Paix, Paris",
  phone_number: "0123456789",
  category: "japanese"
)

Restaurant.create(
  name: "Bella Napoli",
  address: "25 Via Roma, Milan",
  phone_number: "0203456789",
  category: "italian"
)

Restaurant.create(
  name: "Chez Léon",
  address: "10 Grand Place, Bruxelles",
  phone_number: "0301234567",
  category: "belgian"
)

Restaurant.create(
  name: "La Grande Muraille",
  address: "8 Avenue des Champs-Élysées, Paris",
  phone_number: "0401234567",
  category: "chinese"
)

Restaurant.create(
  name: "Bistro Français",
  address: "22 Rue de Rivoli, Lyon",
  phone_number: "0501234567",
  category: "french"
)

puts "5 restaurants créés avec succès"
