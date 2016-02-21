class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end
  
  def show

  end

  def edit

  end
end
