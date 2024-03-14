Rails.application.routes.draw do
  resources :users
  get 'users/new'

  get "/articles", to: "articles#index"
end
