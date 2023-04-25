Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/users" => "users#index"
  post "/users" => "users#create"

  get "/games" => "games#index"
  get "/games/:id" => "games#show"
  post "/games" => "games#create"

end 
