class ReservationsController < ApplicationController
  def index
    @user = current_user
    @reservations = Reservation.all
  end

  def new
    @user = current_user
    @reservation = Reservation.new
  end
  
  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save!
      redirect_to homes_path
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def confirm
    @user = current_user
    @room = Room.find(params[:id])
    @reservation = Reservation.new(reservation_params)
  end

  private
  def reservation_params
    params.require(:reservation).permit(:check_in, :check_out, :number_of_people, :user_id, :room_id)
  end
end
