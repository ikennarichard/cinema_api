# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cinema.delete_all

cinema1 = Cinema.create(name: "Cinema 1", location: 'Lekki')
cinema2 = Cinema.create(name: "Cinema 2", location: 'Victoria Island')
cinema3 = Cinema.create(name: "Cinema 3", location: 'Ikeja')

movie1 =  Movie.create(title: 'No way home', duration: '2 hrs', cinema: cinema1)