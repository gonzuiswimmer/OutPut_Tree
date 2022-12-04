Rails.application.routes.draw do
  
  devise_for :users
  root to: "outputs#index"
  resources :outputs
  resources :users, only: [:show, :edit, :update, :destroy]
end
