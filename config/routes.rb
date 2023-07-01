Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #drawings

  get "/drawings" => "drawings#index"

  post "/drawings" => "drawings#create"

  get "/drawings/:id" => "drawings#show"

  patch "/drawings/:id" => "drawings#update"

  delete "/drawings/:id" => "drawings#destroy"

  #images

  get "/images" => "images#index"

  post "/images" => "images#create"

  #only show uses user_id as :id param
  get "/images/:id" => "images#show"

  patch "/images/:id" => "images#update"

  delete "/images/:id" => "images#destroy"

  #users

  get "/signup" => "users#new"

  post "/users" => "users#create"

  #sessions

  get "/login" => "sessions#new"

  post "/sessions" => "sessions#create"

  get "/logout" => "sessions#destroy"
end
