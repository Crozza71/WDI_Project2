Rails.application.routes.draw do
  root "statics#homepage"

  resources :images
  resources :quotes
  devise_for :users

  get 'users', to: "users#index"
  get 'users/:id', to: "users#show"

  get "quotes/search/:term", to: "quotes#search", as: "query" 
end
