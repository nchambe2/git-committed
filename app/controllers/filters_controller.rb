class FiltersController < ApplicationController
  def edit
    @languages = Filter.where(filterable_type:"Language")
    @skills = Filter.where(filterable_type:"Skill")
    @text_editors = Filter.where(filterable_type:"TextEditor")
    @operating_systems = Filter.where(filterable_type:"OperatingSystem")
    # @sexual_preferences = Filter.where(filterable_type:"SexualPreference"
    @sexual_preferences = SexualPreference.pluck("name")

    @user_filters = current_user.user_filters
  end

  def update
    user_filters = current_user.user_filters

    @filters = params[:user_filter]
    @filters.each do |f|
      filter = Filter.find_by(id: f[0])
      user_filter = user_filters.find_by(filter: filter)
      value = get_value(f[1])
      user_filter.update_attributes(active: value) if user_filter
    end
    redirect_to profile_path(current_user)
  end

  private
  def get_value(item)
    item == '1'
  end
end
