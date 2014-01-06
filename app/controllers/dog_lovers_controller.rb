class DogLoversController < ApplicationController
  def new
    @dog_lover = DogLover.new
  end

  def create
    @dog_lover = DogLover.new(params[:dog_lover])
    if @dog_lover.save
      flash[:success] = "Thank you for creating an account"
      redirect_to root_path
    else
      flash[:failure] = "Please try again"
      render :new
    end
  end
end
