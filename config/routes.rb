Rails.application.routes.draw do
  root "sessions#home"
  #root "session#index"

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login route
  get '/login' => 'sessions#new' #displays the login page
  post '/login' => 'sessions#create' #processes the login 


  #logout route
  delete '/logout' => 'sessions#destroy'
  #it's important that this is a delete so the user cannot see it in the URL bar
  
  resources :stores, only: [:index, :show]


  resources :users
  resources :items, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
