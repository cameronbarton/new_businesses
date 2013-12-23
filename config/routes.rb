NewBusinesses::Application.routes.draw do
  get "businesses" => "businesses#index"

  get "businesses/:id" => "businesses#show", as: "business"

  get "businesses/:id/edit" => "businesses#edit", as: "edit_business"

  patch "businesses/:id" => "businesses#update"
end