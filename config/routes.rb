Rails.application.routes.draw do

  # AUTH ROUTES
  get "/autologin", to: "auth#autologin"

  # USER ROUTES
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"

  # STORY ROUTES
  get "/stories", to: "stories#index"
  post "/stories", to: "stories#create"
  delete "/stories", to: "stories#destroy"

  # TOPIC ROUTES
  get "/topics", to: "topics#index"

  # RESPONSE ROUTES
  get "/responses", to: "responses#index"
  post "/responses", to: "responses#create"
  
  

  
  
  
end
