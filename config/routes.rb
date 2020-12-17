Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :reservations
      resources :listings do 
        resources :reservations
        resources :properties
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
