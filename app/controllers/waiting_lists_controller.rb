class WaitingListsController < ApplicationController

  def join
    @waiting_list = WaitingList.where(challenge_ready: nil).first
    @waiting_list.seducer2_id = current_user.id
    @waiting_list.challenge_ready = true
    @challenge = Challenge.create(seduced_id: @waiting_list.seduced.id, seducer1_id: @waiting_list.seducer1.id, seducer2_id: current_user.id)
    ActionCable.server.broadcast 'waiting',
        challenge_id: @challenge.id
      redirect_to challenge_path(@challenge)
  end

  def create
    @waiting_list = WaitingList.where(challenge_ready: nil).first
    if @waiting_list
      @waiting_list.seducer2_id = current_user.id
      @waiting_list.challenge_ready = true
      @challenge = Challenge.create(seduced_id: @waiting_list.seduced.id, seducer1_id: @waiting_list.seducer1.id, seducer2_id: current_user.id)
      ActionCable.server.broadcast('waiting', challenge_id: @challenge.id)
      @waiting_list.save
      redirect_to challenge_path(@challenge)

    else
      @waiting_list = WaitingList.new(waiting_list_params)
      @waiting_list.save
      redirect_to pages_wait_path
    end
  end

  private

  def  waiting_list_params
      params.require(:waiting_list).permit(:seduced_id, :seducer1_id)
  end


end
