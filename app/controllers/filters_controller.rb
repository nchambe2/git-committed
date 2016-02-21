class FiltersController < ApplicationController
  def index
    @programming_languages = Language.language_names
    @skills = Skill.skill_names
    @sexual_preferences = SexualPreference.sexual_preference_names
  end
end
