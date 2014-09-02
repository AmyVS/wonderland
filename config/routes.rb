Rails.application.routes.draw do
  root :to => 'station#index'
  resources :stations
  resources :line
end
