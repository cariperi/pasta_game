class AnswerController < ApplicationController
  def index
    if params[:name] == params[:answer]
      @message = "Yay! You did it!"
      @status = 1
    else
      @message = "That's not quite right, sorry."
      @status = 0
    end
  end
end