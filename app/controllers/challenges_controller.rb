class ChallengesController < ApplicationController

  def show
    @message = Message.new
    @challenge = Challenge.find(params[:id])
    @seducer1 = @challenge.seducer1
    @seducer2 = @challenge.seducer2
    @seduced = @challenge.seduced
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.seducer1 = current_user
    if @challenge.save!
      redirect_to challenge_path(@challenge)
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
    params.require(:challenge).permit(:seducer2_id, :seduced_id, :current_round)
  end

end
