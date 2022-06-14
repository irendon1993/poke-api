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

  def current_pokemon
    @master = Master.find(params[:id]).update_attribute(:current_pokemon, params[:pokemon])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Could not change current pokemon"}
    end
  end

  def add_to_pc 
    @master = Master.find(params[:id]).update_attribute(:pc, params[:pokemon])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Pokemon added to party"}
    end
  end

  def add_pics
    @master = Master.find(params[:id]).update_attribute(:pic_array, params[:pokemon])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Pokemon added to party"}
    end
  end

  def update_pokeballs
    @master = Master.find(params[:id]).update_attribute(:pokeballs, params[:pokeballs])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Couldn't update pokeballs"}
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

  def create_master
    @master = Master.new(master_params)

    if @master.update(master_params)
      redirect_to @master
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def last_master
    @master = Master.last
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Master not found"}
    end

  end

 



  private
    def master_params
      params.require(:master).permit(:id,:name, :next_zone)
    end  

end