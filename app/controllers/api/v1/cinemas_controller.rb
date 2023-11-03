class Api::V1::CinemasController < ApplicationController
  before_action :set_cinema, only: %i[ show update destroy get_movies ]

  # GET api/v1/cinemas
  def index
    @cinemas = Cinema.all

    render json: @cinemas
  end

  # GET api/v1/cinemas/:name
  def show
    if @cinema
      render json: @cinema
    else
      render json: { error: "Cinema not available" }, status: :not_found
    end
  end

  # POST /cinemas
  def create
    @cinema = Cinema.new(cinema_params)

    if @cinema.save
      render json: @cinema, status: :created, location: @cinema
    else
      render json: @cinema.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cinemas/1
  def update
    if @cinema.update(cinema_params)
      render json: @cinema
    else
      render json: @cinema.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cinemas/1
  def destroy
    @cinema.destroy
  end

  # Cinema Movies /cinemas/:name/movies
  def get_movies
    movies = @cinema.movies

    if movies
      render json: movies
    else
      render json: { error: "No movies available" }, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema
      cinema_name = params[:name].capitalize!
      @cinema = Cinema.find_by(name: cinema_name)
    end

    # Only allow a list of trusted parameters through.
    def cinema_params
      params.require(:cinema).permit(:name, :location)
    end
end
