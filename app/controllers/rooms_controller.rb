class RoomsController < ApplicationController

  def index
    @rooms = Room.all

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
