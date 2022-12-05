Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root to: "outputs#index"
  resources :outputs
  resources :users, only: [:show, :edit, :update, :destroy]
end
