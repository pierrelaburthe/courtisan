class MessagesController < ApplicationController

before_action :set_message, only: [:create, :liked, :disliked]

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
  end

  def liked
    @message.liked = 1
  end

  def disliked
    @message.liked = -1
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_message
    @message = Message.find(:id)
  end

end
