class DiscussionsController < ApplicationController

 def create
  @discussion = Discussion.new(discussion_params)
  @chatroom = Chatroom.find(params[:chatroom_id])
  @discussion.chatroom = @chatroom
  @discussion.user = current_user
  if @discussion.save
    respond_to do |format|
      format.html {redirect_to chatroom_path(@chatroom)}
      format.js
    end
  else
    respond_to do |format|
      format.html {render "chatroom/show"}
      format.js
    end
  end
 end

 private

 def discussion_params
    params.require(:discussion).permit(:content)
 end


end
