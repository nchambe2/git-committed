class LikesController < ApplicationController
  before_action :current_user

  def liker_index
    @pull_requests = current_user.get_likees
  end
  
  def likee_index
    @pull_requests = current_user.get_likers
  end

  def create
    liked = User.find_by(id: params[:liked])
    Like.find_or_create_by(liker: current_user, liked: liked)
    redirect_to profile_path(liked.profile)
  end
  
end
