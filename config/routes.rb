Rails.application.routes.draw do
  get 'toppages/index'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  resources :reviews
  resources :books
  resources :users, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
