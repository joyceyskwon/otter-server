Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :categories, only: [:index, :show, :create]
      resources :transactions, only: [:index, :show, :create]
    end
  end
end
