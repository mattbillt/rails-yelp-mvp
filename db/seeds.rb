# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
new_emperor = {name: "The New Emperor", address: "London", phone_number: "123405", category: "chinese" }
il_soriso =  {name: "Il Soriso", address: "Manchester", phone_number: "678910", category: "italian" }
bar_sushi = {name: "Bar Sushi", address: "Wembley", phone_number: "111213", category: "japanese" }
paris_house = {name: "Paris House", address: "Horsham", phone_number: "141516", category: "french" }
bxls_kitchen = {name: "Brussells Kitchen", address: "Singapore", phone_number: "171819", category: "belgian" }

[new_emperor, il_soriso, bar_sushi, paris_house, bxls_kitchen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
