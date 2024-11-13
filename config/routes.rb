Rails.application.routes.draw do
  get 'restaurant/rails'
  get 'restaurant/generate'
  get 'restaurant/controller'
  get 'restaurant/Review'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # get "index", to: "restaurants#index"
  # get "create", to: "restaurants#create"
  # get "show", to: "restaurant#show"

  # root "posts#index"
end
