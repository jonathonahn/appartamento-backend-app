Rails.application.routes.draw do

  # LOGIN
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  # USER 
  get "/users" => "users#show"
  patch "/users" => "users#update"
  delete "/users" => "users#destroy"

  # GROUPS
  get "/groups" => "groups#show"
  post "/groups" => "groups#create"
  patch "/groups" => "groups#update"
  delete "/groups" => "groups#destroy"

  # LISTINGS
  post "/listings" => "listings#create"
  patch "/listings/:id" => "listings#update"
  delete "/listings/:id" => "listings#destroy"

  # COMMENTS
  post "/comments" => "comments#create"
  delete "/comments/:id" => "comments#destroy"

end
