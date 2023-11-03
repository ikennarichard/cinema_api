# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cinema.delete_all
Movie.delete_all
CinemaMovie.delete_all

alpha = Cinema.create(name: "Cinema 1", location: 'Lekki')
beta = Cinema.create(name: "Cinema 2", location: 'Victoria Island')
charlie = Cinema.create(name: "Cinema 3", location: 'Ikeja')

spider_man =  Movie.create(title: 'No way home', duration: '2 hrs')
never_land =  Movie.create(title: 'Teddys Fortune', duration: '1 hrs')

viewing = CinemaMovie.create([
  {cinema: alpha, movie: spider_man},
  {cinema: beta, movie: never_land},
  {cinema: beta, movie: never_land},
  {cinema: charlie, movie: movie1},
])
