class MessagesController < ApplicationController

before_action :set_message, only: [:create, :liked, :disliked]
before_action :set_challenge

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.challenge = @challenge
    if message.save
      redirect_to challenge_path(@challenge)
    else
      render 'new'
    end
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
    @message = Message.find(params[:id])
  end

  def set_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

end
