class MessagesController < ApplicationController

  def index
  end

  def create
    @message =
      Message.new(message_params)
      if @message.save
        # ActionCable.server.broadcast("MessagesChannel", {content: @message.content})
        MessagesChannel.broadcast_to(
          @room,
          render_to_string(partial: "message", locals: {message: @message})
        )
        head :ok
      else
        render 'message'
      end
  end

  def show
  end


  private

    def message_params
      params.require(:message).permit(:content, :room_id, :user_id)
    end

end
