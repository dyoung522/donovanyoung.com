Rails.application.routes.draw do
  get "hello/world"
  root "home#index"
end
