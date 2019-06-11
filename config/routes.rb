Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  # I want my api be globetrotter.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :visits
      resources :trips
      resources :comments
      resources :attractions
      resources :locations
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
