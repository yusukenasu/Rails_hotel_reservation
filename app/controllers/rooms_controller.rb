class RoomsController < ApplicationController
  def index
    @user = current_user
    @rooms = @user.rooms
  end

  def new
    @user = current_user
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:name, :information, :price, :address, :user_id, :image))
    if @room.save
      redirect_to homes_path
    else
      render "new"
    end
  end

  def show
    @user = current_user
    @room = Room.find(params[:id])
  end

  def edit
    @user = current_user
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(params.require(:room).permit(:name, :information, :price, :address, :user_id, :image))
      redirect_to rooms_path
    else
      render "edit"
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path
  end
end
