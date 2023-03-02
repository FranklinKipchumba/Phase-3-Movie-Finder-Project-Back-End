class MoviesController < ApplicationController
  get '/user/:id/movies' do
    @movies = current_user.movies
    render json: @movies
  end

  post '/user/:id/movie' do
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      render json: @movie, status: :created
    else
      render json: { error: 'Failed to create movie' }, status: :unprocessable_entity
    end
  end

  patch '/user/:id/movie' do
    @movie = current_user.movies.find(params[:id])
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: { error: 'Failed to update movie' }, status: :unprocessable_entity
    end

    delete '/user/:id/movie/:movie_id' do
        @movie = current_user.movies.find(params[:id])
        if @movie.delete(movie_params)
            render json: @movie
        else
            render json: { error: 'Failed to delete movie'}, status: :unprocessable_entity
        end
    end
  end
end
