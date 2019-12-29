Rails.application.routes.draw do
  root 'welcome#home'
  get 'login' => 'sessions#new'
  get 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
