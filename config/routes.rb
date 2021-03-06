Rails.application.routes.draw do 
  devise_for :users
  resources :users
  get "/", controller: "home", action: "index", as: "home"
  get "/contact", controller: "home", action: "contact"
  get "/about", controller: "home", action: "contact"
  get "/track/:id", controller: "tracks", action: "track", as: :track
  post "/track", controller: "tracks", action: "favorite", as: :favorite_track
  post "/search", controller: "home", action: "search"

end
