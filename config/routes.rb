Rails.application.routes.draw do
  
  get 'items/new'
  get 'items/show'
  get 'items/edit'
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root to: "outputs#index"
  resources :outputs
  resources :users, only: [:show, :edit, :update, :destroy]
end
