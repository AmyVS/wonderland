Rails.application.routes.draw do
  root :to => 'stations#index'
  resources :stations

  resources :lines

  resources :stops
end
