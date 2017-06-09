Rails.application.routes.draw do
  get 'static_pages/about'

  resources :tasks
  resources :users
  root 'application#hello'
end
