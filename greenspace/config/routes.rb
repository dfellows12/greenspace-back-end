Rails.application.routes.draw do
  resources :notes, only: [:index, :create, :delete]
  resources :user_plants, only: [:index, :create, :delete]
  resources :plants, only: [:index, :show, :create, :delete]
  resources :users, only: [:show, :index, :create]

  post '/login' => 'users#login'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
