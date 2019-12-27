Rails.application.routes.draw do
  resources :fertilizings, only: [:index, :create, :destroy]
  resources :waterings, only: [:index, :create, :destroy]
  resources :notes, only: [:index, :create, :destroy]
  resources :user_plants, only: [:show, :index, :create, :destroy, :update]
  resources :plants, only: [:index, :create, :destroy, :update]
  resources :users, only: [:show, :index, :create]

  post '/login' => 'users#login'
  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
