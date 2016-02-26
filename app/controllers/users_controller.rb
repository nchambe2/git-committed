class UsersController < ApplicationController
  def index
    render template: 'temp_index'
  end

  def new
    if current_user
      redirect_to edit_profile_path(current_user.profile)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    @user.gender = Gender.find_by(id: params[:gender_id])
    @user.sexual_orientation = SexualOrientation.find_by(id: params[:sexual_orientation_id])
    @user.sexual_preference = SexualPreference.find_by(id: params[:sexual_preference_id])

    if @user.save
      session[:user_id] = @user.id
      Profile.create(user: @user)
      Filter.all.each do |filter|
        @user.user_filters.create(filter: filter)
      end
      redirect_to edit_profile_path(@user.profile)
    else
      @errors = @user.errors.full_messages
      render template: 'users/new'
    end
  end

  def show
    if current_user
      @user = User.find_by(id: params[:id])
      if @user.nil? # change to 404
        redirect_to root_path
      else
        redirect_to profile_path(@user.profile)
      end
    else
      redirect_to login_path
    end
  end

  def edit
    current_user ? (@user = current_user) : (redirect_to login_path)
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to profile_path(@user.profile)
    else
      @errors = @user.errors.full_messages
      render template: 'users/edit'
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation, :birthday, :gender_id, :sexual_orientation_id, :sexual_preference_id, :zip_code)
  end

end
