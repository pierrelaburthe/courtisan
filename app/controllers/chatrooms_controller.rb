class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @discussion = Discussion.new
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
