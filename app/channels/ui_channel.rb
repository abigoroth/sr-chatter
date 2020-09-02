class UiChannel < ApplicationCable::Channel
  def subscribed
    stream_from "ui"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
