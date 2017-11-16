class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :description, :diretor)
  end
end
