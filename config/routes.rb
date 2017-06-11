Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get  '/home',      to: 'static_pages#home'
  get '/signup',      to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  resources :tasks,   only: [:create, :destroy]
  resources :users

end
