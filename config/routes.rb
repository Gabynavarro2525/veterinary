Rails.application.routes.draw do
  devise_for :users
  resources :products
  # Defines the root path route ("/")
   root "products#index"
end
