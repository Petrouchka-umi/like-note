class UsersController < ApplicationController
  # before_action :move_to_index
  
  def show
    user = User.find(params[:id])
    @name = current_user.name
    @messages = user.messages
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

  # def move_to_index
  #   unless user_signed_in?
  #     redirect_to root_path
  #   end
  # end
end
