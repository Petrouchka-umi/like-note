class UsersController < ApplicationController
  
  def show
    user = User.find(params[:id])
    @name = current_user.name
    @messages = user.messages
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
