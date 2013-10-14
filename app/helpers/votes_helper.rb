module VotesHelper
  def upvote_button(user_park)
    button_to "+1", votes_path(user_park_id: user_park.id, direction: true), method: 'post'
  end

  def downvote_button(user_park)
    button_to "-1", votes_path(user_park_id: user_park.id, direction: false), method: 'post'
  end
end
