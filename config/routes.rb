Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :categories, only: [:index, :show, :create]
      resources :transactions, only: [:index, :show, :create, :update]
      get '/transactions', to: 'transactions#index'

      post '/login', to: 'auth#login'
      get '/current_user', to: 'auth#get_user_from_token'

      post '/signup', to: 'users#create'
    end
  end
end
