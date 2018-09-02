Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      post 'login', to: 'users#login'
      resources :users, only: [:index, :create, :update, :destroy]
      resources :boards, only: [:index, :create, :update, :destroy]
      resources :images, only: [:index, :create, :update, :destroy]
    end
  end
end
