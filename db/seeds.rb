# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding Product data..."
# Seed data for a User table
# user = User.create!(email: "email@email.com", encrypted_password: "password",)
Product.destroy_all
# Seed data for products table
Product.create!(name: 'Private Jets', overview: 'Unlimited carbon footprint', user_id: 1, price: 1000.00, unit: 'hours')
Product.create!(name: 'Luxuary Cars', overview: 'Unlimited carbon emissions', user_id: 1, price: 2000.00, unit: 'hours')
Product.create!(name: 'Private Yachts', overview: 'Unlimited marine pollution', user_id: 1, price: 3000.00, unit: 'hours')
Product.create!(name: 'Luxury vacations', overview: 'Unlimited greenhouse emissions & environmental damage ', user_id: 1, price: 5000.00, unit: 'hours')

# Seed data for bookings table
# Booking.create!(people_quantity: 2, duration: 3, product_id: , user_id:)
# Booking.create!(people_quantity: 4, duration: 5, product_id: , user_id:)
puts "Product data seeded successfully!"
