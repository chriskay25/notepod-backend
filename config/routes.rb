Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :notes
      get '/search', to: 'searches#index'
      post '/login', to: 'auth#create'
      get '/get_current_user', to: 'auth#get_current_user'
    end
  end
end
