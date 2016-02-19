class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.gender = Gender.find_by(id: params[:gender])
    @user.sexual_orientation = SexualOrientation.find_by(id: params[:sexual_orientation])

    if @user.save
      session[:user] = @user
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render template: 'users/new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation, :birthday, :gender, :sexual_orientation, :sexual_preference, :zip_code)
  end
end
