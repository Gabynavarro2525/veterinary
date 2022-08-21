Rails.application.routes.draw do
  devise_for :users
  resources :products do
    collection do
      post :import
    end
   root "products#index"
  end
end
