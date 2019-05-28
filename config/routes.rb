Rails.application.routes.draw do

  # I want my api be traveler.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :locations
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
