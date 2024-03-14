Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :articles, only: [:index, :new, :create]

  get 'users/new', to: 'users#new'
end

