require 'securerandom'
class EfinChannel < ApplicationCable::Channel
  def subscribed
    stream_from "efin"
  end

  def receive(data)
    GetEfinJob.perform_later(data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
