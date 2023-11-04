require "test_helper"

class MovieTest < ActiveSupport::TestCase
  fixtures :movies
  
  test 'movie attributes must not be empty' do
    movie = Movie.new
    assert movie.invalid?
    assert movie.errors[:title].any?
    assert movie.errors[:duration].any?
  end
end
