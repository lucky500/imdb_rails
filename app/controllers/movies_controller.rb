class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @movies = Movie.all.order('created_at DESC')
    else
      @category_id = Category.find_by(name: params[:category]).id #find category by name and grab its id, since we are doing our search by id.
      @movies = Movie.where(:category_id => @category_id).order('created_at DESC') #find movies where the category_id matches with the category selected.
    end  
  end

  def show
  end

  def new
    @movie = current_user.movies.build
    @categories = Category.all.map{ |c| [c.name, c.id]}
  end


  def create
    @movie = current_user.movies.build(movie_params)
    @movie.category_id = params[:category_id]

    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @categories = Category.all.map{ |c| [c.name, c.id]}
  end

  def update
    @movie.category_id = params[:category_id]

    if @movie.update(movie_params)
      redirect_to movie_path(@movie)
    else
      render  :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to root_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :description, :director, :category_id)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
