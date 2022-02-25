Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      get '/search', to: 'searches#index'
    end
  end
end
