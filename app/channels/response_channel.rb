class ResponseChannel < ApplicationCable::Channel
  def subscribed
    stream_from "response"
  end
end
