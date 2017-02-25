Rails.application.routes.draw do
  devise_for :users
  resources :cars do
    resources :comments
  end 

  root 'cars#index'

end
