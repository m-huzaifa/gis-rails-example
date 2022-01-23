Rails.application.routes.draw do
  root to: "charging_stations#index"

  resources :charging_stations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
