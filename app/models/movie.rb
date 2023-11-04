class Movie < ApplicationRecord
  has_many :cinema_movies
  has_many :cinemas, through: :cinema_movies

  validates :title, :duration, presence: true
end
