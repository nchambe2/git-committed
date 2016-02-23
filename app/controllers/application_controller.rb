class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def get_user_filters
    current_user.user_filters.where(active: true).map {|user_filter| user_filter.filter.filterable}
  end

end
