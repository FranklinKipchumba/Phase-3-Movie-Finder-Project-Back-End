class MoviesController < ApplicationController
  get '/users/:id/movies' do
      movies =  Movies.where(user_id: params[:id])
      movies.to_json
  end

  post '/users/:id/movies' do
      movies =  Movies.where(user_id: params[:id])
      movies.create(
          title: params[:title],
          category: params[:category],
          description: params[:description],
          user_id: params[:id]
      )
      movies.to_json
  end

  patch '/users/:id/movies/:movie_id' do
      movies =  Movies.where(user_id: params[:id])
      edit_movie = Movies.find(params[:movie_id])
      edit_movie.update(
          title: params[:title],
          category: params[:category],
          description: params[:description]
      )
      movies.to_json
  end

  delete '/users/:id/movies/:movie_id' do
      movies =  Movies.where(user_id: params[:id])
      edit_movie = Movies.find(params[:movie_id])
      edit_movie.destroy
      movies.to_json
  end
end