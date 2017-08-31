class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.includes(discussions: :user).find(params[:id])
    # @discussion = Discussion.new
    # raise

  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.save!
    redirect_to chatroom_path(@chatroom)
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:seduced_id, :seducer_id)
  end


end
