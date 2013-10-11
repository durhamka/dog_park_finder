class VotesController < ApplicationController

  def create
    user_park = UserPark.find(params[:user_park_id])
    vote = user_park.votes.build

    if vote.save
      flash[:success] = "Thank you for your vote!"
    else
      flash[:error] = "Sorry! Something went wrong and your vote wasn't collected. Please try again."
    end
    redirect_to user_parks_path
  end
end
