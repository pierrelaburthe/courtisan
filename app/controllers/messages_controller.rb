class MessagesController < ApplicationController
  before_action :set_message, only: [:liked, :disliked]
  before_action :set_challenge

  def create
    @message = Message.new(message_params)
    @message.challenge = @challenge
    @message.user = current_user
    if @message.save
      ActionCable.server.broadcast 'messages',
        message_partial: render(partial: "messages/message", locals: { message: @message })
      head :ok
      # redirect_to challenge_path(@challenge)
    else
      render 'challenges/show'
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
