Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/standup', to: 'static_pages#standup'
  get '/employees', to: 'static_pages#employees'
  get '/signup', to: 'users#new'
  resources :users
  post '/signup',  to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
end
