# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the DB"
Recipe.destroy_all


Recipe.create!(
  name: "Butternut Squash and Red Lentil Soup",
  description: "Serve this nourishing butternut squash red lentil soup with a hunk of whole grain bread or gluten-free buckwheat bread. Ready in just 35 minutes, this is an excellent light meal for a busy weeknight. Leftovers taste even better the next day!",
  image_url: "https://www.forksoverknives.com/uploads/2024/12/Lentil-Squash-Chowder-Wordpress.jpg?auto=webp",
  rating: 4.6
)

Recipe.create!(
  name: "Silky Vegan Chocolate Ganache Tart",
  description: "This spectacular vegan chocolate ganache tart is perfect for birthdays, Valentine’s Day, Mother’s Day, or any celebration table.",
  image_url:     "https://www.forksoverknives.com/uploads/2024/12/chocolate-ganache-tarte-wide-crop.jpg?auto=webp",
  rating: 3.9
)

Recipe.create!(
  name: "Veggie Mac and Cheese with Sun-Dried Tomatoes",
  description: "If you’ve got some leftover veggies in the fridge and pasta in the cupboard, you’re halfway to creating this simple, seven-ingredient (not counting salt and pepper) mac and cheese, which is kid-friendly and perfect for busy weeknights.",
  image_url:     "https://www.forksoverknives.com/uploads/2024/12/Loaded-Mac-and-Cheese-Wordpress.jpg?auto=webp",
  rating: 4.5
)

Recipe.create!(
  name: "Sheet Pan Supper with Broccoli, Spuds, and Maple-Balsamic Chickpeas",
  description:"For convenience, you can’t go wrong with a sheet pan dinner! Roasted in a hot oven, the natural sugars in sweet potato, red potato, and red onion start to caramelize and take on a rich umami, flavor.",
  image_url:     "https://www.forksoverknives.com/uploads/2024/12/Beans-and-Sweets-Sheet-Pan-Dinner-Wordpress.jpg?auto=webp",
  rating: 5.0
)

puts "Done! #{Recipe.count} have been added"
