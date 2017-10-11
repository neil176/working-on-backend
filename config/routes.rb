Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :projects, :tags, :items, :follows

  # NEED A LOGIN ROUTE TO DIRECT TO AUTH#CREATE


end
