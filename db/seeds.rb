# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      'London',
    phone_number:  '+44 20 7700 3055',
    category:      'chinese'
  },
  {
    name:         'OLA',
    address:      'Barcelona',
    phone_number:  '+34 934 63 82 95',
    category:      'french'
  },
  {
    name:         'Arthur',
    address:      'Paris',
    phone_number:  '+33 1 46 23 45 54',
    category:      'italian'
  },
  {
    name:         'La gaufre',
    address:      'Brussels',
    phone_number:  '+32',
    category:      'belgian'
  },
  {
    name:         'Red District',
    address:      'Amsterdam',
    phone_number:  '+31 20 320 6100',
    category:      'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
