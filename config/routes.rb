Rails.application.routes.draw do
  get "/welcome", to: "static_pages#welcome", as: "welcome"
  get "/about",   to: "static_pages#about",   as: "about"
  get "/blog",    to: "static_pages#blog",    as: "blog"

  root "static_pages#welcome"
end
