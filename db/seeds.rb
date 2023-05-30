Product.destroy_all
puts "Cleaning database..."
# # # Seed data for a Product associated with the User
private_jet = Product.create!(
  name: 'Flying with a Private Jet',
  overview: 'Do you ever find yourself torn between the luxurious convenience of flying on a private jet and the nagging guilt of its environmental impact? We understand your concerns and have revolutionized private air travel to align with your values. Our groundbreaking approach combines the comfort and exclusivity of a private jet with a deep commitment to environmental responsibility. With our state-of-the-art fleet, you can soar through the skies with a clear conscience. You will invested heavily in cutting-edge technology to minimize the carbon footprint and contribute for this important topic. Furthermore, we actively participate in carbon offset programs, ensuring that every flight is carbon neutral.',
  user_id: 1,
  price: 1000.00,
  unit: 'flights'
)
puts private_jet.id

luxury_cars = Product.create!(
  name: 'Luxury Cars',
  overview: 'Unlimited carbon emissions',
  user_id: 1,
  price: 2000.00,
  unit: 'hours'
)
puts luxury_cars.id

private_yachts = Product.create!(
  name: 'Private Yachts',
  overview: 'Unlimited marine pollution',
  user_id: 1,
  price: 3000.00,
  unit: 'hours'
)
puts private_yachts.id

luxury_vacations = Product.create!(
  name: 'Luxury vacations',
  overview: 'Unlimited greenhouse emissions & environmental damage ',
  user_id: 1,
  price: 5000.00,
  unit: 'hours'
)
puts luxury_vacations.id

# # Seed data for a Booking associated with the User and Product
# user.bookings.create!(people_quantity: 2, duration: 3, product_id: product)
