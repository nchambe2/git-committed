class FiltersController < ActionController::Base
  def index
    @programming_languages = Language.all
    @skills = Skill.all
    @sexual_prefences = SexualPreference.all
  end
end