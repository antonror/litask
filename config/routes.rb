Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#about'
  get  '/about',      to: 'static_pages#about'
  get '/signup',      to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  resources :tasks,   only: [:create, :destroy]
  resources :users

end
