Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :todos, only: [:index]

  root "users#index"
end
