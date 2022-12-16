class MessagesController < ApplicationController

  def index
  end

  def create
    @message =
      Message.new(
        room: @room,
        content: params.dig(:message, :content)
      )

    @message.save
  end

  def show
  end


end
