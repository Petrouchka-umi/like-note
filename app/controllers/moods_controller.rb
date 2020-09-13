class MoodsController < ApplicationController
  def index
    # @status = Mood.where(status: ).group("date(created_at)").count
    # @message_status = Message.where(image: params[:image]).order(created_at: "DESC").to_a
  end
end
