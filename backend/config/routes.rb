Rails.application.routes.draw do

resources :users
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :drinks
      # resources :stores
      resources :users
      resources :api_communicator, only: [:new, :create, :show]
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      get '/stores' => 'api_coummunicaor#request'

      get '/search', to: 'searches#new'
      post '/search', to: 'searches#show'
    end
  end 
end 
