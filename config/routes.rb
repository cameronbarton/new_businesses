NewBusinesses::Application.routes.draw do
  root "businesses#index"
  resources :businesses
end