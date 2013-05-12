class ParkController < ApplicationController
  def search
  end

  def show
    @park = Park.find(params[:id])
  end
end
