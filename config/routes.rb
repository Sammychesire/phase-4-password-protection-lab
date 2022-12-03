Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create], path: '/signup'
  get '/me', to: "users#show"
  resources :sessions, only: [:create], path: '/login'
  delete '/logout', to: "sessions#destroy"
end
