class RegistrationsController < ApplicationController
 
  def new
    @trainer = Trainer.new
  end
  
  def create
    @trainer = Trainer.new(user_params)
    if @trainer.save
      session[:trainer_id] = @trainer.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @trainer = Trainer.find(params[:trainer_id])
    if @trainer
      render json: @trainer, status: 200
    else
      render json: {error: "Trainer not found"}
    end
  end


private 
  def user_params
    params.require(:registration).permit(:username, :password)
  end
end