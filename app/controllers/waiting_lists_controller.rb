class WaitingListsController < ApplicationController

  def join
      @waiting_list = WaitingList.where(challenge_ready: nil).first
      @waiting_list.seducer2_id = current_user.id
      @waiting_list.challenge_ready = true
      @challenge = Challenge.create(seduced_id: @waiting_list.seduced.id, seducer1: @waiting_list.seducer1, seducer2: current_user )
      redirect_to challenge_path(@challenge)
  end

  def create
    @waiting_list = WaitingList.new(waiting_list_params)
    @waiting_list.save!
    redirect_to pages_wait_path
  end

  private

  def  waiting_list_params
      params.require(:waiting_list).permit(:seduced_id, :seducer1_id)
  end


end
