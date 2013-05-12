class ParkController < ApplicationController
  def show
    @park = Park.find(params[:id])
  end

  def search
    @park = Park.search(params[:city], params[:address], params[:zip_code])
  end
end
