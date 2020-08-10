Rails.application.routes.draw do
  root 'sessions#index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :trainings
  resources :tests do
    resources :trainings
    end
  resources :activities do
    resources :trainings
    end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
