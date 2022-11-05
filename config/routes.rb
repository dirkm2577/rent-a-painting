Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/show'
  devise_for :users
  root to: "paintings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :paintings, only: [:index, :new, :create, :show] do
    resources :bookings
  end
end
