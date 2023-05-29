# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(email: "test@bla.com", password: "123456")
Product.create!(name: 'Private Jets', overview: 'Unlimited carbon footprint', unit: 'hours', price: 1000.00)
Product.create!(name: 'Luxuary Cars', overview: 'Unlimited carbon emissions', unit: 'hours', price: 2000.00)
Product.create!(name: 'Private Yachts', overview: 'Unlimited marine pollution', unit: 'hours', price: 3000.00)
Product.create!(name: 'Luxury vacations', overview: 'Unlimited greenhouse emissions & environmental damage ', unit: 'hours', price: 5000.00)
