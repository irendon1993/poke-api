class WelcomeController < ApplicationController
  def index
    if session[:trainer_id]
      @trainer = Trainer.find(session[:trainer_id])
  end
end