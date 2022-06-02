class MastersController < ApplicationController
  def index
    @master = Master.all
    render json: @master, status: 200
  end

  def edit
    @master = Master.find(params[:id])
  end

  def update
    @master = Master.find(params[:id]).update_attribute(:currentZone, params[:zone])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Could not change zone"}
    end
  end

  def add_to_pc 
    @master = Master.find(params[:id]).update_attribute(:poke_party, params[:pokemon])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Pokemon added to party"}
    end
  end


  def show
    @master = Master.find(params[:id])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Trainer not found"}
    end
  end

  private
    def master_params
      params.require(:master).permit(:id, :next_zone)
    end  

end