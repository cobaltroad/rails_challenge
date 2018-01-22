class ResponseChannel < ApplicationCable::Channel
  def subscribed
    stream_from "response"
  end

  def receive(data)
    puts "RUBY RECEIVED"
  end
end
