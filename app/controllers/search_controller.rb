class SearchController < ApplicationController
  def index
    @parks = Park.all
    # @park = Park.search(params[:city], params[:address], params[:zip_code])
  end
end
