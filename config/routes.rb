Rails.application.routes.draw do
  # get "about/index"
  # match "about/index", to: "about#index", via: :get
  # get "about", to: "about#index"

  root "home#index"
  # match "/", to: "home#index", via: :get
  # get "/", to: "home#index"

  get "about", to: "home#about"
end
