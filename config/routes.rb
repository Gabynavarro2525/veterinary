Rails.application.routes.draw do
  devise_for :users
  resources :products do
    collection do
      post :import
    end
  end
  root "products#index"
  get "/send_mail" => "products#send_mail"
end
