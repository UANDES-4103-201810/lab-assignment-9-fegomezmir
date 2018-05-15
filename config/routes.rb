Rails.application.routes.draw do
  resources :categories
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :actors
  resources :directors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get "person/new", to: "person#new"
end
