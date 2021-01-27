Rails.application.routes.draw do

  # AUTH ROUTES
  get "/autologin", to: "auth#autologin"

  # USER ROUTES
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  get "/users/:id/bookmarks", to: "users#bookmarks"
  post "/users/:id/bookmarks", to: "users#new_bookmark"

  # STORY ROUTES
  get "/stories", to: "stories#index"
  get "/stories/:id", to: "stories#show"
  post "/stories", to: "stories#create"
  patch "/stories/:id/add_snap", to: "stories#updatesnaps"
  delete "/stories/:id", to: "stories#delete"

  # TOPIC ROUTES
  get "/topics", to: "topics#index"

  # RESPONSE ROUTES
  get "/responses", to: "responses#index"
  post "/responses", to: "responses#create"

  # BOOKMARK ROUTES
  delete "/bookmarks/:id", to: "bookmarks#delete"
  

  
  
  
end
