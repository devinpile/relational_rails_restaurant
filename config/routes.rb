Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'welcome#index'

  get '/restaurants', to: 'restaurants#index'
  get '/restaurant/:id', to: 'restaurants#show'

  get '/dishes', to: 'dishes#index'

  get '/shifts', to: 'shifts#index'
  get '/shifts/:id', to: 'shifts#show'
end
