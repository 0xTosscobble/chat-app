class RoomsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @current_room = Room.find(params[:id])
    @rooms = Room.all
    @messages = Message.where(room_id: @current_room)
    @current_user = current_user.id
  end


  def create
    @room =
      Room.new(room_params)

    @room.save
  end

  def destroy
    @room= Room.find(params[:id])
    @room.destroy


  end

    private

    def room_params
      params.require(:room).permit(:name)
    end

end
