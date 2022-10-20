Rails.application.routes.draw do
  get 'comments/index'
  get 'posts/index'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  get "/users", to: "users#index"

  get "/users/:id", to: "users#show"
end
