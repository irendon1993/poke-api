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

  def update_trainer
    @master = Game2.find(params[:id]).update_attribute(:active_trainer, params[:trainer])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Could not change active trainer"}
    end
  end

  def update_state
    @master = Game2.find(params[:id]).update_attribute(:game_state, params[:state])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Could not change current state"}
    end
  end


end
