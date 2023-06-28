Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/drawings" => "drawings#index"

  post "/drawings" => "drawings#create"

  get "/drawings/:id" => "drawings#show"

  patch "/drawings/:id" => "drawings#update"

  delete "/drawings/:id" => "drawings#destroy"
end
