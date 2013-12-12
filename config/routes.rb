NewBusinesses::Application.routes.draw do
  get "businesses" => "businesses#index"

  get "businesses/:id" => "businesses#show", as: "business"
end
