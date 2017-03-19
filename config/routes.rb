Rails.application.routes.draw do

  resources :reviews
  resources :doctors do
  	resources :reviews, controller: 'doctor/reviews'
  end
  
end
