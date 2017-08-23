class ChallengesController < ApplicationController

  def show
    @message = Message.new
    @user = User.find(params[:user_id])
    @challenge = Challenge.find(params[:id])
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.seducer2_id = current_user.id
    if @challenge.save!
      redirect_to user_challenge_path(user_id: current_user.id, id: @challenge.id)
    else
      render 'new'
    end
  end

  def wait
  end

  def finished
    @challenge.current_round = 4
  end

  private

  def challenge_params
    params.require(:challenge).permit(:seducer1_id, :seduced_id, :current_round)
  end

end
