Rails.application.routes.draw do
  resources :user_restaurants, only: [:index, :create, :destroy, :show]
  resources :user_attractions
  resources :restaurants, only: [:index, :create, :destroy, :show]



  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      post '/login', to: "auth#create"
      get '/profile', to: "users#profile"
    end
  end
end
