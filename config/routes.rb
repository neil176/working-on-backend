Rails.application.routes.draw do

  resources :users, :projects, :tags, :items, :follows

	# NEED A LOGIN ROUTE TO DIRECT TO AUTH#CREATE
  post '/login', to: 'auth#create'

  
  get '/currentuser', to: 'users#current' # replaces => # get '/welcome', to: "application#welcome"
  get '/feed', to: 'users#feed'
  

  # an equivalent for this will be needed => # patch '/update', to: "api/v1/users#update"

	


end
