class UsersController < ApplicationController
  def index
    render template: 'temp_index'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.gender = Gender.find_by(id: params[:gender])
    @user.sexual_orientation = SexualOrientation.find_by(id: params[:sexual_orientation])

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

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to root_path
    else
      @errors = @user.errors.full_messages
      render template: 'users/edit'
    end
  end

  def edit
    if current_user
      @user = current_user
    else
      redirect_to login_path
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation, :birthday, :gender, :sexual_orientation, :sexual_preference, :zip_code)
  end

  def current_user
    return nil if session[:user_id].nil?
    User.find_by(id: session[:user_id])
  end
end
