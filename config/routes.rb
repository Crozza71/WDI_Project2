Rails.application.routes.draw do
  root "statics#homepage"
  resources :images
  resources :quotes  

    
  devise_for :users

  get 'quotes/like/:id', to: 'quotes#like', as: 'like_quotes'
  get 'quotes/unlike/:id', to: 'quotes#unlike', as: 'unlike_quotes'
  

  get 'users', to: "users#index"
  get 'users/:id', to: "users#show", as: "user_show"
  get 'users', to: 'users#about'

  get "quotes/search/:term", to: "quotes#search", as: "query" 
end

