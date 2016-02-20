class SessionsController < ApplicationController
  def new
    render template: 'users/login'
  end

  def create
    @user = User.find_by(username: login_params[:username])
    if @user && @user.authenticate(login_params[:password])
      session[:user] = @user
      redirect_to '/'
    else
      @errors = ['wrong credentials']
      render template: 'users/login'
    end
  end

  def destroy
    session.delete(:user)
    redirect_to root_url
  end

  private
  def login_params
    params.require(:user).permit(:username, :password)
  end
end
