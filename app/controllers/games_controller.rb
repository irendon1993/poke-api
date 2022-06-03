class GamesController < ApplicationController
  def index
    @game = Game.all
    render json: @game, status: 200
  end

  def show
    @game = Game.find(params[:id])
    if @game
      render json: @game, status: 200
    else
      render json: {error: "Game state not found"}
    end
  end
end
