Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "products#index"
  # define routes for products and bookings nested within products
  resources :products do
    resources :bookings, only: [:new, :create]
  end
end
