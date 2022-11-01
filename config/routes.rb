Rails.application.routes.draw do
  get 'paintings/new'
  devise_for :users
  root to: "paintings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :paintings
=======
  resources :paintings, only: [:index]
>>>>>>> d3de4a625cd2e371ebc458a81f8ef13627f7a41b
end
