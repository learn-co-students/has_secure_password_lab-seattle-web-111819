Rails.application.routes.draw do
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  resources :users, only: [:new, :create]
  root 'welcome#home'

  # get '/login', to: "sessions#new"
  # post '/login', to: "sessions#create"
  # post '/logout', to: "sessions#destroy"
  # resources :users, only: [:new, :create]
  # root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
