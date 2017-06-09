Rails.application.routes.draw do
  root 'static_pages#about'
  get 'static_pages/about'

  resources :tasks
  resources :users

end
