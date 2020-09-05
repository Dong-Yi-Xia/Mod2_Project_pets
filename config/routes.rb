Rails.application.routes.draw do
  resources :reviews
  resources :adoptions
  resources :rents
  resources :pets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/login", to: "users#login", as: "login"
  post "/login_form", to: "users#handle_login"
  delete "/logout", to: "users#logout", as: "logout"


end
