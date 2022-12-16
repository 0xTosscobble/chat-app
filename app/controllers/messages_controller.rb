class MessagesController < ApplicationController

  def index
  end

  def create
    @message =
      Message.new(message_params)

    if @message.save
      
    else
     
    end
  end

  def show
  end


  private

    def message_params
      params.require(:message).permit(:content, :room_id, :user_id)
    end

end
