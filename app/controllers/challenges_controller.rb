class ChallengesController < ApplicationController

  def show
    @challenge = Challenge.find(params[:id])
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(seducer1: current_user, seduced: seduced1 , current_round: 0)
    @challenge.save!
  end

  def wait
  end

  def finished
    @challenge.current_round = 4
  end

  private

  def challenge_params
    params.require(:challenge).permit(:seducer1, :seduced, :current_round)
  end

end
