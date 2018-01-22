require 'securerandom'
class EfinChannel < ApplicationCable::Channel
  def subscribed
    stream_from "#{params[:channel]}"
  end

  def receive(data)
    puts "RECEIVED FROM USER #{data}"
    GetEfinJob.perform_now(data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
