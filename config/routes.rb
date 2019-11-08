Rails.application.routes.draw do
root 'sessions#home'
 
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login route
  get '/login' => 'sessions#new' #displays the login page
  post '/login' => 'sessions#create' #processes the login 


  #logout route
  get '/logout' => 'sessions#destroy'
  #it's important that this is a delete so the user cannot see it in the URL bar
  
  #omniauth callback route
  get "/auth/google_oauth2/callback" => 'sessions#provider_login'
  #could do get "/auth/:provider/callback" this is in case we have multple forms of oauth, then this becomes dynamic and can send all to the same place. it works looking for something between those two slashes. 

  resources :offers

  resources :stores, only: [:index, :show] do
    resources :stores, only: [:new, :create, :index]
  end

  resources :users, only: [:new, :create, :index, :show] do
    resources :items, only: [:new, :create, :index]
    #using these three is called shallow routing
    #we only want something to be nested if we need it nested
  end

  resources :items, only: [:index, :show, :new, :edit, :destroy] do
    resources :offers, only: [:new, :create, :index]
    #resouces :offers, shallow:true
  end


#NESTED ROUTES
# need new and show or index
#she doesn't like 'new' when it's under user (MyBlog pt3 min7:00)

# '/users/:id/items'
# '/items/:id/offers'
# '/store/:id/items'

# '/users/:id/offers'
# '/items/:id/users'
end
