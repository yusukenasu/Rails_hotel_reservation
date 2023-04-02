class UsersController < ApplicationController
    
  def account
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def profile_edit
    @user = current_user
  end

  def profile_update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_profile_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :self_introduction, :image)
    end

end
