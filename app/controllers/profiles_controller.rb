class ProfilesController < ApplicationController
  def show
    @profile = Profile.find_by(id: params[:id])
    @profile.username = User.find_by(id: params[:username])
  end

  def edit

  end
end
