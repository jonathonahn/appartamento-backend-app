Rails.application.routes.draw do

  # LOGIN
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  # USER 
  get "/users/" => "users#show"
  get "/users" => "users#update"
  get "/users" => "users#destroy"

  # GROUPS
  get "/groups/:id" => "groups#show"
  post "/groups" => "groups#create"
  patch "/groups" => "groups#update"
  delete "/groups" => "groups#destroy"

  # LISTINGS
  post "/listings" => "listings#create"
  patch "/listings" => "listings#update"
  delete "/listings" => "listings#destroy"

  # COMMENTS
  post "/comments" => "comments#create"
  delete "/comments/:id" => "comments#destroy"

end
