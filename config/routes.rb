Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root to: "outputs#index"
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :outputs do
    resources :items, only: [:new, :create, :show, :edit, :update, :destroy]
      # resources :orders, only: [:index, :create]
  end
end
