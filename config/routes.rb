Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  resources :games

  # get "/users" => "users#index"
  # post "/users" => "users#create"
  # patch "/users/:id" => "users#update"

  # get "/games" => "games#index"
  # get "/games/:id" => "games#show"
  # post "/games" => "games#create"
  # patch "/games/:id" => "games#update"

end 
