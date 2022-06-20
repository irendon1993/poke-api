class ZonesController < ApplicationController
  def index
    @zones = Zone.all
    render json: @zones, status: 200
  end

  def create
    @zone = Zone.new(zone_params)

    if @zone.update(zone_params)
      redirect_to @zone
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @zone = Zone.find(params[:id])
    if @zone
      render json: @zone, status: 200
    else
      render json: {error: "Zone not found"}
    end
  end

  def update_next_zones
    @zone = Zone.find(params[:id]).update_attribute(:next_zone, params[:next_zone])
    if @zone
      render json: @zone, status: 200
    else
      render json: {error: "Couldn't update zones"}
    end
  end
  def update_directions
    @zone = Zone.find(params[:id]).update_attribute(:directions, params[:directions])
    if @zone
      render json: @zone, status: 200
    else
      render json: {error: "Couldn't update zone directions"}
    end
  end

  def update_zone_description
    @zone = Zone.find(params[:id]).update_attribute(:zone_description, params[:zone_description])
    if @zone
      render json: @zone, status: 200
    else
      render json: {error: "Couldn't update zone deprecation"}
    end
  end

private
def zone_params
  params.require(:zone).permit(:id, :zone_description, :wild_pokemon => [], :directions => [], :next_zone => [])
end  

end