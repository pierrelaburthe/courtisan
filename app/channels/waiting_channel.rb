class WaitingChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'waiting'
  end
end
