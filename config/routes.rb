Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pokemon#index"

  get "/pokemon", to: "pokemon#index"
  get "/pokemon/:pokeid", to: "pokemon#show"
  post "/create", to: "pokemon#create"

  get "/trainer/:trainer_id", to: "registrations#show"
  post "/sign_up", to: "registrations#create"

  get "master/find/:id", to: "masters#show"
  get "master", to: "masters#index"
  put "master/:id/zone_update", to: "masters#update"
  put "master/:id/pc_update", to: "masters#add_to_pc"
  put "master/:id/pokemon_update", to: "masters#current_pokemon"
  put "master/:id/pics_update", to: "masters#add_pics"
  post "master/create_master", to: "masters#create_master"
  get "master/last", to: "masters#last_master"



  get "zone/:id", to: "zones#show"

  get "game2/:id", to: "game2s#show"
  get "game2", to: "game2s#index"
  put "game2/:id/update_trainer", to: "game2s#update_trainer"
  put "game2/:id/update_state", to: "game2s#update_state"


  resources :pokemons, param: :pokeid
  resources :masters, param: :id 


end