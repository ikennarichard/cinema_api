require "test_helper"

class CinemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema = cinemas(:one)
  end

  test "should get index" do
    get cinemas_url, as: :json
    assert_response :success
  end

  test "should create cinema" do
    assert_difference("Cinema.count") do
      post cinemas_url, params: { cinema: { location: @cinema.location, name: @cinema.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cinema" do
    get cinema_url(@cinema), as: :json
    assert_response :success
  end

  test "should update cinema" do
    patch cinema_url(@cinema), params: { cinema: { location: @cinema.location, name: @cinema.name } }, as: :json
    assert_response :success
  end

  test "should destroy cinema" do
    assert_difference("Cinema.count", -1) do
      delete cinema_url(@cinema), as: :json
    end

    assert_response :no_content
  end
end
