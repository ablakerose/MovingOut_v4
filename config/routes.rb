Rails.application.routes.draw do
  #root "session#home"
  root "session#index"

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login route

  #logout route
  delete '/logout' => 'sessions#delete'
  #it's important that this is a delete so the user cannot see it in the URL bar
  
  resources :stores, only: [:index, :show]


  resources :users
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
