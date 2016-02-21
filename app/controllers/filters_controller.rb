class FiltersController < ActionController::Base
  def index
    # @user = User.find(current_user.id)
    @programming_languages = Language.language_names
    @skills = Skill.skill_name
    @sexual_prefences = SexualPreference.sexual_preference_names
  end
end