Rails.application.routes.draw do
  resources :categories
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :actors
  resources :directors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get "/person/new", to: "person#new"
  post "/person/create", to: "person#create"
  post "/categories/create", to: "categories#create"
  get "home/home"

  root to: "home#home"
end
