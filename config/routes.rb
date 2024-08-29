Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :notes
      resources :favorite_podcasts
      get '/search', to: 'searches#index'
      post '/signup', to: 'users#create'
      post '/login', to: 'auths#create'
      get '/get_current_user', to: 'auths#get_current_user'
    end
  end
end
