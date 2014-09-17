# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Beginning seeding!"
categories = Category.create([
		{ name: "groceries" },
		{ name: "restaurants" },
		{ name: "food" },
		{ name: "medical" },
		{ name: "clothing" },
		{ name: "rent" },
		{ name: "mortage" },
		{ name: "other" },
		{ name: "travel" },
		{ name: "gym" },
		{ name: "entertainment" },
		{ name: "transportation" }]
)
user = User.create(username: "tester")


user.expenditures << Expenditure.new(name: "Whole Foods Shopping", description: "Got more than usual due to sale", amount: 125.30, date: Date.today)

user.expenditures.first.categories << Category.first

puts "End of seeding"