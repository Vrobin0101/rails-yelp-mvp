# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

category = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address:
    Faker::Address.full_address, phone_number: Faker::Number.leading_zero_number(digits: 10), category: category.sample)
    review = Review.new(content: Faker::Restaurant.review, rating: rand(0..5))
  restaurant.save!
  review.restaurant = restaurant
  review.save!
end
