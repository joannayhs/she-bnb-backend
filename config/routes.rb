Rails.application.routes.draw do

  post 'api/v1/login', to: 'api/v1/session#create'
  get 'api/v1/get_current_user', to: 'api/v1/session#get_current_user'
  delete 'api/v1/logout', to: 'api/v1/session#destroy'
  post 'api/v1/signup', to: 'api/v1/users#create'
  post 'api/v1/amenities_listings', to: 'api/v1/amenities_listings#create'
  
  namespace :api do
    namespace :v1 do
      resources :amenities
      resources :reviews
      resources :reservations
      resources :properties
      resources :images
      resources :listings do 
        resources :reservations
        resources :amenities
        resources :reviews
      end 
      resources :users do 
        resources :listings
        resources :reservations
        resources :reviews
      end 
    end 
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
