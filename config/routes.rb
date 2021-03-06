Rails.application.routes.draw do
  
  root 'sessions#home'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  get '/auth/google_oauth2/callback' => 'sessions#google'
  resources :users
  resources :goals
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
