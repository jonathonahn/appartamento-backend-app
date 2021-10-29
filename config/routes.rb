Rails.application.routes.draw do

  # LOGIN
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  # USER 
  get "/users/current" => "users#show"
  patch "/users/current" => "users#update"
  delete "/users/current" => "users#destroy"

  # GROUPS
  get "/groups/current" => "groups#show"
  post "/groups/current" => "groups#create"
  patch "/groups/current" => "groups#update"
  delete "/groups/current" => "groups#destroy"

  # LISTINGS
  post "/listings" => "listings#create"
  patch "/listings/:id" => "listings#update"
  delete "/listings/:id" => "listings#destroy"

  # COMMENTS
  post "/comments" => "comments#create"
  delete "/comments/:id" => "comments#destroy"

end
