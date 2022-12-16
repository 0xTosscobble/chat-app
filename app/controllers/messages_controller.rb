class MessagesController < ApplicationController

  def index
  end

  def create
    @message =
      Message.new(message_params)

    @message.save
  end

  def show
  end


  private

    def message_params
      params.require(:message).permit(:content, :room_id, :user_id)
    end

end
