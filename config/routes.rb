Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show] do
    resources :bookings, only: [:index]
  end

  resources :spaces, only: [:index, :create, :new, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "spaces", to: "spaces#index"
end
