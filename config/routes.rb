Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
  resources :pizzas, only: [:index, :new, :create, :update, :show]
  resources :restaurants, only: [:show, :new, :index]
end
