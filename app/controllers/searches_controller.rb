class SearchesController < ApplicationController
  def index
    @parks = Park.all
    # @park = Park.search(params[:city], params[:address], params[:zip_code])
  end

  def new
    @amenities = Amenity.amenities
    @search = Search.new
  end

  def show
    @search = Search.new(params[:search])
    @user_parks = @search.results
  end
end
