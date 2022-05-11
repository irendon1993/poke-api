class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
    render json: @pokemons, status: 200
  end

  def show
    @pokemon = Pokemon.find(params[:pokeid])
    if @pokemon
      render json: @pokemon, status: 200
    else
      render json: {error: "Pokemon not found"}
    end
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
   
  end

private
  def pokemon_params
    params.require(:pokemon).permit(:pokeid, :name, :iamgeurl)
  end
end
