class FiltersController < ActionController::Base
  def index
    @programming_languages = Language.language_names
    @skills = Skill.skill_name
    @sexual_prefences = SexualPreference.sexual_preference_names
  end
end