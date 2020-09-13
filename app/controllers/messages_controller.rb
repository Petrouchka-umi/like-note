class MessagesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @messages = Message.includes(:user).order("created_at DESC")
  end
  
  def new
    @message = Message.new
  end

  def create
    # binding.pry
    @message = Message.create(message_params)
    if @message.save
      redirect_to messages_path, notice: 'diaryが保存されました'
    else
      flash.now[:alert] = 'diaryの未入力または文字数制限です'
      render :new
    end
  end

  private
  def message_params
    params.require(:message).permit(:text1, :text2, :text3, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
