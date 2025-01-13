# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data (optional, to avoid duplication)
puts "Cleaning the DB..."
Recipe.destroy_all

# Seed recipes
puts "Creating new recipes."

Recipe.create!(
  [
    {
      name: "Spaghetti Carbonara",
      description: "A true Italian Carbonara recipe, ready in about 30 minutes. There is no cream...",
      image_url: "https://example.com/carbonara.jpg",
      rating: 8.5
    },
    {
      name: "Caesar Salad",
      description: "Crispy romaine lettuce with a tangy Caesar dressing, croutons, and Parmesan.",
      image_url: "https://example.com/caesar_salad.jpg",
      rating: 9.0
    },
    {
      name: "French Toast",
      description: "Deliciously soft and golden slices of bread, cooked with cinnamon and egg batter.",
      image_url: "https://example.com/french_toast.jpg",
      rating: 7.8
    },
    {
      name: "Miso Ramen",
      description: "Rich miso-based broth with ramen noodles, tofu, and green onions.",
      image_url: "https://example.com/miso_ramen.jpg",
      rating: 8.2
    }
  ]
)
puts "#{Recipe.count} recipes created."
