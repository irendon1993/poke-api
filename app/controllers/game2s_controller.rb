class Game2sController < ApplicationController
  def index
    @game2 = Game2.all
    render json: @game2, status: 200
  end

  def show
    @game2 = Game2.find(params[:id])
    if @game2
      render json: @game2, status: 200
    else
      render json: {error: "Game state not found"}
    end
  end
end
