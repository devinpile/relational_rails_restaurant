# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Restaurants
@arnolds = Restaurant.create!(name: "Arnold's", rating: 3, open: true)
@bettys = Restaurant.create!(name: "Betty's", rating: 4, open: true)

#Shifts 
@shift1 = Shift.create!(shift_type: 'Opener', hours: 8, full_staff: true)
@shift2 = Shift.create!(shift_type: 'Closer', hours: 8, full_staff: true)