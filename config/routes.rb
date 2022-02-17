Rails.application.routes.draw do
  resources :activities, only: [:index, :create, :destroy]
  resources :user_activities, only: [:index, :create, :destroy, :show]
  resources :user_restaurants, only: [:index, :create, :destroy, :show]
  resources :restaurants, only: [:index, :create, :destroy, :show]
  get '/activities/:location_id', to: "activities#name"
  get '/activities/city/:id', to: "activities#city" 


  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      post '/login', to: "auth#create"
      get '/profile', to: "users#profile"
      
    end
  end
end
