class DogLoversController < ApplicationController
  def new
    @dog_lover = DogLover.new
  end

  def create
    @dog_lover = DogLover.new(dog_lover_params)
    if @dog_lover.save
      flash[:success] = "Thank you for creating an account"
      redirect_to root_path
    else
      flash[:failure] = "Please try again"
      render :new
    end
  end

  private

  def dog_lover_params
    params.require(:dog_lover).permit(:name, :email)
  end
end
