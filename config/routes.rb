Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :delete]
      resources :photos, only: [:index, :create]
      resources :locations, only: [:index, :create]
    end
  end
end
