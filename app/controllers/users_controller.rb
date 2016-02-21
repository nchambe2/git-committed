class UsersController < ApplicationController
  def index
    render template: 'temp_index'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.gender = Gender.find_by(id: params[:gender_id])
    @user.sexual_orientation = SexualOrientation.find_by(id: params[:sexual_orientation_id])
    @user.sexual_preference = SexualPreference.find_by(id: params[:sexual_preference_id])

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render template: 'users/new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation, :birthday, :gender_id, :sexual_orientation_id, :sexual_preference_id, :zip_code)
  end

end
