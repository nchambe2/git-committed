require 'will_paginate/array'
class ProfilesController < ApplicationController

  def index
    if current_user
      filters = current_user.user_filters.where(active:true).map(&:filter).map(&:filterable)
      all_profiles = Profile.all.order(updated_at: :desc).where.not(id: current_user.profile.id)
      filtered = filter_profiles(all_profiles, filters).map(&:id)
      @profiles = Profile.find(filtered).paginate(:per_page => 10)
    else
      redirect_to login_path
    end
  end

  def show
    @profile = Profile.find_by(id: params[:id])
    if @profile
      @user = @profile.user
    else
      redirect_to login_path #change to 404 page path
    end
  end

  def edit
    @profile = Profile.find_by(id: params[:id])
    @user = current_user
    @genders = Gender.all
    @programming_languages = Language.all
    @text_editors = TextEditor.all
    @operating_systems = OperatingSystem.all
    @skills = Skill.all
    @relationship_types = RelationshipType.all
    @sexual_preferences = SexualPreference.all
    @sexual_orientations = SexualOrientation.all

    if @profile != current_user.profile
      redirect_to edit_profile_path(current_user.profile)
    end

  end

  def update
    @profile = Profile.find(params[:id])
    @user = User.find(current_user.id)
    @profile.update_attributes(update_profile)
    @user.update_attributes(update_user)
    redirect_to profile_path(@profile)
  end

  private
  def update_profile
    params.require(:profile).permit(:about_me, :github_link)
  end

  def update_user
    params.require(:user).permit(:username,
                                 :first_name,
                                 :last_name,
                                 :email,
                                 :gender,
                                 :languages,
                                 :text_editors,
                                 :operating_systems,
                                 :skills,
                                 :seeking,
                                 :sexual_preferences,
                                 :sexual_orientations)
  end

  def filter_profiles(profiles, filters)
    filtered = []
    profiles.each do |profile|
      user_traits = [profile.user.languages, profile.user.text_editors, profile.user.skills, profile.user.operating_systems].flatten
      if filters.any? {|det| user_traits.include?(det)}
        filtered << profile
      end
    end
    filtered
  end
end
