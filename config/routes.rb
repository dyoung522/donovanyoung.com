Rails.application.routes.draw do
  get "blogs",    to: "static_pages#blogs"
  get "projects", to: "static_pages#projects"
  get "resume",   to: "static_pages#resume"
  get "cv",       to: "static_pages#resume"
  get "welcome",  to: "static_pages#about",    as: "about"

  get    "login",  to: "user_sessions#new"
  post   "login",  to: "user_sessions#create"
  delete "logout", to: "user_sessions#destroy"

  # get  "register",      to: "user_registrations#new"
  # post "register/user", to: 'user_registrations#create'

  root "static_pages#about"
end
