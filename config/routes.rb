Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # Defines the root path route ("/")
   root "main#principalPage"
end
