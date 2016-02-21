class ProfilesController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
    @genders = Gender.all.gender_names
    @programming_languages = Language.all.language_names
    @text_editors = TextEditor.all.editor_names
    @operating_systems = OperatingSystem.all.system_names
    @skills = Skill.all.skill_names
    @relationship_types = RelationshipType.relationship_type_names
    @sexual_preferences = SexualPreference.all.sexual_preference_names
    @sexual_orientations = SexualOrientation.all.orientation_names
  end

  def update
    @profile = Profile.find(params[:id])
    @user = User.find(current_user.id)
    @profile.update_attributes(update_profile)
    @user.update_attributes(update_user)
    redirect_to profile_path
  end

  private
  def update_profile
    params.require(:profile).permit(:about_me)
  end

  def update_user
    params.require(:profile).permit(:username,
                                 :first_name,
                                 :last_name,
                                 :email,
                                 :gender,
                                 :programming_languages,
                                 :text_editors,
                                 :operating_systems,
                                 :skills,
                                 :seeking,
                                 :sexual_preferences,
                                 :sexual_orientations)
  end
end
