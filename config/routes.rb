Rails.application.routes.draw do
  resources :study_sessions
  get '/auth/:provider/callback' => 'sessions#omniauth'
  # if want multiple omniauth providers, leave as :provider. Otherwise, specify google, etc
  
  root 'sessions#index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :tests
  resources :activities
  resources :study_sessions
  resources :users do
    resources :tests, shallow: true
    resources :study_sessions, shallow: true
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
