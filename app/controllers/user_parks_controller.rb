class UserParksController < ApplicationController
  before_filter :assign_amenities, only: [:new, :create]
  def show
    @user_park = UserPark.find(params[:id])
  end

  def index
    @user_parks = UserPark.sorted_by_popularity
  end

  def new
    @user_park = UserPark.new
  end

  def create
    @user_park = UserParkBuilder.build_park(params[:user_park])

    if @user_park.save
      flash[:success] = "Thank you for creating a park"
      redirect_to root_path
    else
      flash[:error] = @user_park.errors.full_messages
      render :new
    end
  end

  private

  def assign_amenities
    @amenities = Amenity.amenities
  end

end
