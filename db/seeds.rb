# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
categories = Category.create([
	{name: Faker::Commerce.department, description: Faker::Company.bs}
	
	])
end

10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "random.jpg", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end

10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "cat.jpg", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end

10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "food.jpg", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end

10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "troll.jpg", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end

10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "hotdog.jpg", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end

10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "http://33.media.tumblr.com/ed49da9ff187452315fcf0627deb799f/tumblr_n7qti8FzYs1r98v7lo1_1280.gif", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end
10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "game.png", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end

10.times do
services = Service.create([
	{name: Faker::Company.catch_phrase, description: Faker::Company.bs, price: Faker::Commerce.price, picture: "profile.png", seller_id: rand(1..9), category_id: rand(1..9), text: Faker::Lorem.paragraph}
	])
end