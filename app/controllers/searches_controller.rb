class SearchesController < ApplicationController
  def index
    @parks = Park.all
    # @park = Park.search(params[:city], params[:address], params[:zip_code])
  end

  def new
    @search = Search.new
  end

  def show
    @search = params[:search][:address]
    @user_parks = UserPark.search(@search)
  end
end
