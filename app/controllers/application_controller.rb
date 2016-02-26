class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :get_side, :get_opposite_side

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def get_user_filters
    current_user.user_filters.where(active: true).map {|user_filter| user_filter.filter.filterable}
  end


  def get_side(current_user_id, message)
    if current_user_id == message.user.id
      return "L"
    else
      return "R"
    end
  end

  def get_opposite_side(current_user_id, message)
    if current_user_id == message.user.id
      return "R"
    else
      return "L"
    end

  end
end
