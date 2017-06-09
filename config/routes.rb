Rails.application.routes.draw do
  root 'static_pages#about'
  get  '/about',   to: 'static_pages#about'
  get '/signup',   to: 'users#new'
  resources :tasks
  resources :users

end
