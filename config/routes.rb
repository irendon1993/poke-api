Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pokemon#index"

  get "/pokemon", to: "pokemon#index"
  get "/pokemon/:pokeid", to: "pokemon#show"
  post "/create", to: "pokemon#create"

  get "/trainer/:trainer_id", to: "registrations#show"
  post "/sign_up", to: "registrations#create"

  get "master/:id", to: "masters#show"
  get "master", to: "masters#index"
  put "master/:id/zone_update", to: "masters#update"
  put "master/:id/pc_update", to: "masters#add_to_pc"


  get "zone/:id", to: "zones#show"

  resources :pokemons, param: :pokeid
  resources :masters, param: :id 


end