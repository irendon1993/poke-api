class GameStateController < ApplicationController
  def index
    @game_state = GameState.all
    render json: @master, status: 200
  end

  def show
    @game = Game.find(params[:id])
    if @game
      render json: @master, status: 200
    else
      render json: {error: "Game state not found"}
    end
  end

end
