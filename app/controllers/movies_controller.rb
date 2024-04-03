class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.required(:movie).permit(:title, :release_date, :running_time, :story_line, :country_origin, :director_id, :genre_id))

    return redirect_to @movie if @movie.save

    render :new
  end

  def 
end
