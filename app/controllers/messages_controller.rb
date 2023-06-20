class MessagesController < ApplicationController

  def index
  end

  def create
    @message =
      Message.new(message_params)

      respond_to do |format|
      if @message.save
        ActionCable.server.broadcast("MessagesChannel", 
        {content: @message.content, 
        id: @message.user_id,
        room_id: @message.room_id,
        username: Account.find_by(user_id: @message.user_id).username,
        })
        head :ok
        format.turbo_stream
        format.html {redirect_to message_url(@message)}
      # else 
        # format.html {render :new, status: :unprocessable_entity}
        # format.html {redirect_to message_url(@message)}
      end
    end
  
  end

  def message
  end



  private

    def message_params
      params.require(:message).permit(:content, :room_id, :user_id)
    end

end
