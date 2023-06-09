Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'submits#index'
  resources :submits, only: [:index, :create, :destroy]
end
