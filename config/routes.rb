Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  # get "/users", to: "users#index"
  #
  # get "/users/:id", to: "users#show"

  #####  Why??????
  # get "/users/new", to: "users#new"
  #
  # post "/users", to:"users#create"

  #####
  resources :users
end
