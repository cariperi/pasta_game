Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/random', to: 'random#index', as: 'random'

  get '/guess', to: 'guess#index', as: 'new_guess'

  get '/answer', to: 'answer#index', as: 'answer'
end
