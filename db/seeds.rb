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

puts "Creating new recipes"
Recipe.create!(
  name: "Banana Pancakes",
  description: "Sweet and fluffy banana pancakes, serve with syrup for a delicious brunch treat",
  image_url: "https://media.istockphoto.com/id/1742038467/photo/super-healthy-food-oatmeal-pancakes-with-honey-and-chia-seeds.webp?a=1&b=1&s=612x612&w=0&k=20&c=yNlwqUCMJmf3YmWqoi4mJFarAgp4qcLrnODV7sU6__k=",
  rating: 8.5
)

Recipe.create!(
  name: "Creamy Lasagne",
  description: "A classic lasagna recipe made with an easy meat sauce as the base.",
  image_url: "https://media.istockphoto.com/id/1096466528/photo/slice-of-lasagna.webp?a=1&b=1&s=612x612&w=0&k=20&c=5p3XXqdQKkMqcIJxY_3ujf2GpPEmZnxsWJ84WCJ94HQ=",
  rating: 9.0
)

Recipe.create!(
  name: "Margherita Pizza",
  description: "A traditional pizza recipe",
  image_url: "https://images.unsplash.com/photo-1592229005296-735b0f6c0722?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hlZXNlJTIwcGl6emElMjBwbGF0ZXxlbnwwfHwwfHx8MA%3D%3D",
  rating: 6.8
)

Recipe.create!(
  name: "Vanilla Cake",
  description: "A sweet, moist vanilla cake made with pure vanilla extract.",
  image_url: "https://images.unsplash.com/photo-1536599524557-5f784dd53282?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dmFuaWxsYSUyMGNha2V8ZW58MHx8MHx8fDA%3D",
  rating: 10
)
puts "Done, #{Recipe.count} recipes created!"
