require "test_helper"

class CinemaTest < ActiveSupport::TestCase
  fixtures :cinemas

  test 'name should be unique within the same location' do
    cinema = Cinema.new( 
      name: cinemas(:movieland).name, 
      location: 'Antartica'
      )

    assert_not cinema.valid?
    assert_equal ["Cinema in the same location must have a unique name"], cinema.errors[:name]
  end
end
