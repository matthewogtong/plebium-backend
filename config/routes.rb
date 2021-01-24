Rails.application.routes.draw do
  get "/topics", to: "topics#index"
  get "/users", to: "users#index"
  get "/stories", to: "stories#index"
  
  
end
