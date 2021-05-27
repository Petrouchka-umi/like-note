class UsersController < ApplicationController
  
  def show
    user = User.find(params[:id])
    @user = current_user.id
    @messages = user.messages
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
