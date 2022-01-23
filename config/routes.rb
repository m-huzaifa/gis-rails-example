Rails.application.routes.draw do
  root to: "charging_stations#index"

  resources :charging_stations

  namespace :api do
    namespace :v1 do
      get :geo_json, to: 'geo_json#geo_json', :defaults => { :format => 'json' }
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
