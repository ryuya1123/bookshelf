Rails.application.routes.draw do
  
  root to: 'books#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :reviews
  resources :books
  resources :users, only: [:index, :show, :new, :create]
  resources :toppages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
