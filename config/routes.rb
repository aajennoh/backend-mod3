Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      delete "/users/:id", to: "users#destroy"
      resources :users, only: [:index, :create, :delete]
      resources :photos, only: [:index, :create]
      resources :locations, only: [:index, :create]
    end
  end
end
