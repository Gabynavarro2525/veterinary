Rails.application.routes.draw do
  get 'products/index', to: 'products#index'
  get 'products/new', to: 'products#new'
  # Defines the root path route ("/")
   root "main#principalPage"
end
