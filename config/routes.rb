Rails.application.routes.draw do
  resources :images
  devise_for :users
  root "statics#homepage"
  get 'statics/homepage'

  get 'users', to: "users#index"

  get 'users/:id', to: "users#show"

  get "quotes/search/:term", to: "quotes#search"

  resources :quotes
  
end
