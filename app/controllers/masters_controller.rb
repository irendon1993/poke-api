class MastersController < ActionController::Base
  def index
    @master = Master.all
    render json: @master, status: 200
  end

  def show
    @master = Master.find(params[:id])
    if @master
      render json: @master, status: 200
    else
      render json: {error: "Trainer not found"}
    end
  end

end