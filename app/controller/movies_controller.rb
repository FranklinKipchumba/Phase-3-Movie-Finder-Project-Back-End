class MoviesController < ApplicationController
  def index
    @movies = current_user.movies
    render json: @movies
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      render json: @movie, status: :created
    else
      render json: { error: 'Failed to create movie' }, status: :unprocessable_entity
    end
  end

  def update
    @movie = current_user.movies.find(params[:id])
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: { error: 'Failed to update movie' }, status: :unprocessable_entity
    end
  end
end
