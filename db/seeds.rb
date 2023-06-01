# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
# Seed data for a User
# User.create!(email: "email@email.com", password: "password")
Product.destroy_all
User.destroy_all
# # # Seed data for a Product associated with the User
user = User.create!(
  email: "123456@web.de",
  password: "123456",
  first_name: "Max",
  last_name: "Mustermann"
)

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1685623528/aircraft_v6ceu8_nv4ixr.jpg")
product = Product.create!(
  name: 'Flying with a Private Jet',
  overview: 'Do you ever find yourself torn between the luxurious convenience of flying on a private jet and the nagging guilt of its environmental impact? We understand your concerns and have revolutionized private air travel to align with your values. Our groundbreaking approach combines the comfort and exclusivity of a private jet with a deep commitment to environmental responsibility. With our state-of-the-art fleet, you can soar through the skies with a clear conscience. You will invested heavily in cutting-edge technology to minimize the carbon footprint and contribute for this important topic. Furthermore, we actively participate in carbon offset programs, ensuring that every flight is carbon neutral.',
  user_id: user.id,
  price: 1000,
  unit: 'flights'
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1685623528/boat_xloznj_ibdpu5.jpg")
product = Product.create!(
  name: 'Cruise Ship Vacations',
  overview: "Embark on a journey of self-discovery and conscious exploration with our groundbreaking Ethical Cruise solution. We understand that in today's world, concerns about sustainability and environmental impact weigh heavily on the minds of travelers. That's why we have created a guilt-free cruising experience that allows you to indulge in the joys of travel while making a positive difference.",
  user_id: user.id,
  price: 2000,
  unit: 'cruise days'
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1685623528/waste_yo02u7_loy2ni.jpg")
product = Product.create!(
  name: 'Forgot about waste separation?',
  overview: 'Are you tired of feeling guilty every time you throw away your garbage without separating it properly? Do you wish there was a convenient way to making a positive impact on the environment? We understand that life can get busy, and you may not always have the time or energy to research waste separation guidelines. And with this product you will contribute to a responsible and eco-conscious environment.',
  user_id: user.id,
  price: 300,
  unit: 'weeks'
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1685623528/tank_wyw1sk_irpqne.jpg")
product = Product.create!(
  name: 'Buying a Tank',
  overview: "We understand that in an ever-changing world, it's important to consider the impact of our choices. That's why we've created this revolutionary product, designed to address the guilt associated with purchasing military-tank vehicle while promoting a sustainable future for our planet.  With a commitment to environmental responsibility, you’ll invest in cutting-edge technology and innovative engineering that helps reduce carbon print around the world.",
  user_id: user.id,
  price: 5000,
  unit: 'weeks'
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1685634191/man-498473_1280_m6f23r.jpg")
product = Product.create!(
  name: 'Skiing',
  overview: "Guilt-free skiing for the environmentally conscious adventurer! Are you an avid skier who loves hitting the slopes but can't help feeling a pang of guilt about the impact your hobby may have on the environment? We understand your concern and want to introduce you to this Product, the ultimate solution for guilt-free skiing. It's time to ditch the guilt and embrace a more sustainable way to indulge in your favorite winter activity. Together, let's ski responsibly and leave nothing but our tracks on the mountain. Choose EthicalEscape and make a difference today!",
  user_id: user.id,
  price: 390,
  unit: 'days'
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1685634592/paintball-3659099_1280_mqpzdu.jpg")
product = Product.create!(
  name: 'Playing Paintball',
  overview: "Do you love the adrenaline rush of paintball but find yourself feeling guilty about the environmental impact of this thrilling sport? We hear you, and we're excited to introduce you our product, the ultimate solution for guilt-free paintball adventures. With EthicalEscape, you no longer have to compromise your passion for paintball while maintaining a deep commitment to preserving our planet.",
  user_id: user.id,
  price: 290,
  unit: 'days'
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1685634922/fireworks-1953253_1280_gvbp4z.jpg")
product = Product.create!(
  name: 'Firing Fireworks',
  overview: "A guilt-free fireworks for environmentally conscious celebrations! Are you someone who loves the awe-inspiring beauty of fireworks but can't shake the feeling of guilt about their environmental impact? We understand your concern, and we're excited to introduce the revolutionary solution that lets you enjoy dazzling displays of light while caring for the planet. EthicalEscape is not your typical partner—we are committed to responsible celebrations that leave behind nothing but unforgettable memories. Let's usher in a new era of celebration where environmental responsibility takes center stage.",
  user_id: user.id,
  price: 990,
  unit: 'days'
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save

# # Seed data for a Booking associated with the User and Product
# user.bookings.create!(people_quantity: 2, duration: 3, product_id: product)
