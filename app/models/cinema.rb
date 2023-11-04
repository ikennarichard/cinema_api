class Cinema < ApplicationRecord
  has_many :cinema_movies
  has_many :movies, through: :cinema_movies

  validates :name, :location, presence: true
  validates :name, uniqueness: { scope: :location, message: "Cinema in the same location must have a unique name" }
end
