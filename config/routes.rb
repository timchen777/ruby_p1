Rails.application.routes.draw do
  devise_for :users
  # get 'pages/contact'
  get "contact", to: "pages#contact"

  # get 'pages/about'
  
  get "about", to: "pages#about"
  get "error", to: "pages#error"
  
  get "alden", to: redirect("https://www.scratch.mit.edu")
  # get 'pages/home'

  resources :projects
  
  root 'pages#home'
  get "*path", to: redirect("/error")
end
