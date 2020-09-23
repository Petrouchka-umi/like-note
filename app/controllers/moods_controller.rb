class MoodsController < ApplicationController
  before_action :move_to_index
  
  def index
    @mood = Mood.all
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
