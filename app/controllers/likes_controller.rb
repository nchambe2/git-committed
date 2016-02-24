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
    if liked
      Like.find_or_create_by(liker: current_user, liked: liked)
      redirect_to profile_path(liked.profile)
    else
      redirect_to browse_path
    end
  end
  
  def destroy
    liked = User.find_by(id: params[:liked])
    like = Like.find_by(liker: current_user, liked: liked)
    like.destroy if like
    redirect_to puller_index_path
  end
  
end
