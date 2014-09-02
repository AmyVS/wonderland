Rails.application.routes.draw do
  root :to => 'station#index'
  resources :station do
    resources :line
  end
end
