class UserParksController < ApplicationController
  def show
    @user_park = UserPark.find(params[:id])
  end

  def index
    @user_parks = UserPark.all
  end

  def new
    @user_park = UserPark.new
  end

  def create
    @user_park = UserPark.new

    if @user_park.save
      flash[:success] = "Thank you for creating a park"
      redirect_to root_path
    else
      flash[:error] = "Please try again"
      render :new
    end
  end
end
