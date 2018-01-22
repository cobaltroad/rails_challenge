require 'securerandom'
class EfinChannel < ApplicationCable::Channel
  def subscribed
    stream_from "#{params[:channel]}"
  end

  def receive(data)
    puts "DATA #{data}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
