Rails.application.routes.draw do
  get "/blogs",    to: "static_pages#blogs"
  get "/projects", to: "static_pages#projects"
  get "/resume",   to: "static_pages#resume"
  get "/cv",       to: "static_pages#resume"
  get "/welcome",  to: "static_pages#about",    as: "about"

  get "/cv", to: redirect("/resume")

  root "static_pages#about"
end
