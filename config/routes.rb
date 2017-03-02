Rails.application.routes.draw do
  resources :todos, only: [:index, :create, :update, :destroy], :path => '' do
    collection do
      put :update_many
      delete :destroy_many
    end
  end

  resources :users

  root "todos#index"
end
