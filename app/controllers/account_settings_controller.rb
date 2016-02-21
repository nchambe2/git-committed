class AccountSettingsController < ApplicationController

  def edit
    current_user ? (@user = current_user) : (redirect_to login_path)
  end

  def update
    @user = current_user
    if @user.update_attributes(account_params)
      redirect_to root_path
    else
      @errors = @user.errors.full_messages
      render template: 'account_settings/edit'
    end
  end

  private
  def account_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
