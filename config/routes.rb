Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      post 'register', to: 'users#create'
      post 'login', to: 'users#login'
      get 'test', to: 'users#test'
      resources :users, only: [:index, :create, :update, :destroy]
    end
  end
end
