class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'discussions'
  end
end
