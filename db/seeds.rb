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

cinema1 = Cinema.create(name: "Cinema 1", location: 'Lekki')
cinema2 = Cinema.create(name: "Cinema 2", location: 'Victoria Island')
cinema3 = Cinema.create(name: "Cinema 3", location: 'Ikeja')

movie1 =  Movie.create(title: 'No way home', duration: '2 hrs')
movie2 =  Movie.create(title: 'Teddy', duration: '1 hrs')

viewing = CinemaMovie.create([
  {cinema: cinema1, movie: movie1},
  {cinema: cinema2, movie: movie2},
  {cinema: cinema3, movie: movie2},
  {cinema: cinema3, movie: movie1},
])
