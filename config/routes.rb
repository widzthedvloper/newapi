Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
          resources :foods do
            resources :ingredients
          end
      end
    end
  end
  post 'api/v1/log', to: 'api/v1/users#log'  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
