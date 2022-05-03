class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    pokelist = []
    pokestats = {}
    conn = Faraday.new("https://pokeapi.co")
    response = conn.get("/api/v2/pokemon/#{pokemon}/")
    @pokemonApi = JSON.parse(response.body, symbolize_names: true)
    pokestats.store("pokeid",@pokemonApi[:id])
    pokestats.store("name",@pokemonApi[:name])
    pokestats.store("imageURL",@pokemonApi[:sprites][:front_default])
    pokestats.store("type",@pokemonApi[:types].first[:type][:name].capitalize)
    pokelist.push(pokestats)
    # require 'pry'; binding.pry

    
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
  end
end

private
  def pokemon_params
    params.require(:pokemon).permit(:pokeid, :name, :imageURL, :type)
  end
end