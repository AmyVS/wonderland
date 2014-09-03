Rails.application.routes.draw do
  root :to => 'stations#index'
  resources :stations do
    resources :stops
  end

  resources :lines do
    resources :stops
  end

  resources :stops
end
