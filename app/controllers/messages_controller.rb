class MessagesController < ApplicationController

  def index
    @messages = Message.includes(:user)
    @messages = current_user.messages.order("created_at DESC")
  end
  
  def new
    @message = Message.new
    @message.build_mood
  end

  def create
    binding.pry
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
    params.require(:message).permit(:text1, :text2, :text3, :image, mood_attributes: [:status, :user_id]).merge(user_id: current_user.id)
  end

end
