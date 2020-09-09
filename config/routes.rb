Rails.application.routes.draw do
  resources :reviews, except: [:delete]
  resources :adoptions
  resources :rents
  resources :pets
  resources :users, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/login", to: "users#login", as: "login"
  # post "/login_form", to: "users#handle_login"
  # delete "/logout", to: "users#logout", as: "logout"


  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/logout", to: "sessions#destroy", as: "logout"

  get "/about", to: "welcomes#about", as: "about"
  get "/contact", to: "welcomes#contact", as: "contact"

  root to: "welcomes#home", as: "home"


end
