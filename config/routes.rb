Rails.application.routes.draw do
   get '/pizzas', to: 'pizzas#index'
   get '/pizza/:id', to: 'pizzas#show', as: 'pizza'
   get '/pizzas/new', to: 'pizzas#new', as: 'new_pizza'
   post '/pizzas', to: 'pizzas#create'


   get '/restaurants', to: 'restaurants#index'
   get '/restaurant/:id', to: 'restaurants#show', as: 'restaurant'

   
 

end
