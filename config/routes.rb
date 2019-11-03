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
  
  resources :stores, only: [:index, :show] do
    resources :stores, only: [:new, :create, :index]
  end

  resources :users, only: [:new, :create, :index] do
    resources :items, only: [:new, :create, :index]
    #using these three is called shallow routing
    #we only want something to be nested if we need it nested
  end

  resources :items, only: [:index, :show, :new] do
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
