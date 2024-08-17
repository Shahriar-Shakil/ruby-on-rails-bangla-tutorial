Rails.application.routes.draw do
  # get "about/index"
  # match "about/index", to: "about#index", via: :get
  # get "about", to: "about#index"

  root "home#index"
  # match "/", to: "home#index", via: :get
  # get "/", to: "home#index"

  get "about", to: "home#about", as: "about"
  get "hello", to: "hello#index", as: "hello"

  # get "books", to: "books#index"
  # get "books/new", to: "books#new"

  # get "books/:id", to: "books#show", as: "book"
  # post "books", to: "books#create"
  # get "books/:id/edit", to: "books#edit", as: "edit_book"
  # patch "books/:id", to: "books#update"
  # delete "books/:id", to: "books#destroy"

  resources :books
end
