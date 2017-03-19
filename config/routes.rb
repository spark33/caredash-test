Rails.application.routes.draw do
  resources :reviews
  resources :doctors do
  	resources :reviews, controller: 'doctor/reviews'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
