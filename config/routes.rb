Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :cinemas, only: [:index, :create, :show, :destroy], param: :name
      resources :movies, only: [:index, :create, :show]
      get '/cinemas/:name/movies', to: 'cinemas#get_movies'
      get '/movies/:id/cinemas', to: 'movies#get_cinemas'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
