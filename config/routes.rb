Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  get '/standup', to: 'static_pages#standup'
  get '/signup', to: 'users#new'
  resources :users
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :employees
  get '/new', to: 'employees#new'
  post '/employees#new', to: 'employees#create'
end
