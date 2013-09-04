class UserParksController < ApplicationController
  def show
  end

  def index
  end

  def new
    @user_park = UserPark.new
  end

  def create
    @user_park = UserPark.create(params[:user_park])
    redirect_to root_path
  end
end
