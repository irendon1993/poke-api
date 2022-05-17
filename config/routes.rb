Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pokemon#index"

  get "/pokemon", to: "pokemon#index"
  get "/pokemon/:pokeid", to: "pokemon#show"
  post "/create", to: "pokemon#create"

  get "/trainer/:trainer_id", to: "registrations#show"
  post "/sign_up", to: "registrations#create"

  resources :pokemons, param: :pokeid


end