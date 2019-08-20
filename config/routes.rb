Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spaces, only: [:index, :create, :new, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "spaces", to: "spaces#index"
end
