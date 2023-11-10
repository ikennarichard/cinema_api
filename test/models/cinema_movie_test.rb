require "test_helper"

class CinemaMovieTest < ActiveSupport::TestCase
  def setup
    @cinema = Cinema.create(name: 'Cinema A', location: 'Aba')
    @movie = Movie.create(title: 'Fast and Furious', duration: '3 hours')

    # test associations
    @cinema_movie = CinemaMovie.create(cinema: @cinema, movie: @movie)
  end

  test 'should be valid' do
    assert @cinema_movie.valid?
  end

  test 'should require a cinema' do
    @cinema_movie.cinema = nil
    assert_not @cinema_movie.valid?
  end

  test 'should belong to a cinema' do
    assert_equal @cinema, @cinema_movie.cinema
  end
end
