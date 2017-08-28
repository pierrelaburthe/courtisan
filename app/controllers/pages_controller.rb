class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]


  def home
    @challenge = Challenge.new
    @waiting_list = WaitingList.new
  end

  def wait

  end
end
