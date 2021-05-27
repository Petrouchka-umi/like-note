class MoodsController < ApplicationController
  before_action :move_to_index
  
  def index
    @mood = Mood.includes(:user)
    @messages = current_user.messages
    @user = User.where(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
