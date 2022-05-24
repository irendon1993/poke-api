class ZonesController < ApplicationController
  def index
    @zone = Zone.all
    render json: @zone, status: 200
  end

  def show
    @zone = Zone.find(params[:id])
    if @zone
      render json: @zone, status: 200
    else
      render json: {error: "Zone not found"}
    end
  end
end
