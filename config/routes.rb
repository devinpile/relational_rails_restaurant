Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  get "/restaurants", to: "restaurants#index"

  get '/shifts', to: 'shifts#index'
end
