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
    address:      '7 Boundary St, London E2 7JE',
    phone_number: 'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '04 26 13 76 65',
    category:     'italian'
  },
  {
    name:         'Woko',
    address:      '7 Boundary St, Confluence E2 7JE',
    phone_number: '04 26 13 76 65',
    category:     'japanese'
  },
  {
    name:         'Burger',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '04 26 13 76 65',
    category:     'japanese'
  },
  {
    name:         'Paul',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '04 26 13 76 65',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
