Rails.application.routes.draw do

  # AUTH ROUTES
  get "/autologin", to: "auth#autologin"

  # USER ROUTES
  get "/users", to: "users#index"
  post "/users", to: "users#create"

  # STORY ROUTES
  get "/stories", to: "stories#index"
  post "/stories", to: "stories#create"

  # TOPIC ROUTES
  get "/topics", to: "topics#index"
  
  

  
  
  
end
