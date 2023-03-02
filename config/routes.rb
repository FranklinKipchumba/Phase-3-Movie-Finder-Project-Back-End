namespace :api do
  namespace :controller do
    resources :users, only: [:create]
    resources :movies, only: [:index, :create, :update, :destroy]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
    get '/movies', to: 'movies#index'
    get '/movies/search', to: 'movies#search'
  end
end