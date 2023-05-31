# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed data for a User
# User.create!(email: "email@email.com", password: "password")
Product.destroy_all
# # # Seed data for a Product associated with the User
User.create!(
  email: "123456@web.de",
  password: "123456",
  first_name: "Max",
  last_name: "Mustermann"
)

Product.create!(
  name: 'Flying with a Private Jet',
  overview: 'Do you ever find yourself torn between the luxurious convenience of flying on a private jet and the nagging guilt of its environmental impact? We understand your concerns and have revolutionized private air travel to align with your values. Our groundbreaking approach combines the comfort and exclusivity of a private jet with a deep commitment to environmental responsibility. With our state-of-the-art fleet, you can soar through the skies with a clear conscience. You will invested heavily in cutting-edge technology to minimize the carbon footprint and contribute for this important topic. Furthermore, we actively participate in carbon offset programs, ensuring that every flight is carbon neutral.',
  user_id: 1,
  price: 1000.00,
  unit: 'flights'
)

Product.create!(
  name: 'Cruise Ship Vacations',
  overview: "Embark on a journey of self-discovery and conscious exploration with our groundbreaking Ethical Cruise solution. We understand that in today's world, concerns about sustainability and environmental impact weigh heavily on the minds of travelers. That's why we have created a guilt-free cruising experience that allows you to indulge in the joys of travel while making a positive difference.",
  user_id: 1,
  price: 2000.00,
  unit: 'cruise days'
)
Product.create!(
  name: 'Forgot about waste separation?',
  overview: 'Are you tired of feeling guilty every time you throw away your garbage without separating it properly? Do you wish there was a convenient way to making a positive impact on the environment? We understand that life can get busy, and you may not always have the time or energy to research waste separation guidelines. And with this product you will contribute to a responsible and eco-conscious environment.',
  user_id: 1,
  price: 300.00,
  unit: 'weeks'
)
Product.create!(
  name: 'Buying a Tank',
  overview: "We understand that in an ever-changing world, it's important to consider the impact of our choices. That's why we've created this revolutionary product, designed to address the guilt associated with purchasing military-tank vehicle while promoting a sustainable future for our planet.  With a commitment to environmental responsibility, you’ll invest in cutting-edge technology and innovative engineering that helps reduce carbon print around the world.",
  user_id: 1,
  price: 5000.00,
  unit: 'weeks'
)

# # Seed data for a Booking associated with the User and Product
# user.bookings.create!(people_quantity: 2, duration: 3, product_id: product)
