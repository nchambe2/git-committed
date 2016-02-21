class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all.order(updated_at: :desc)
  end
  
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update

  end
end
