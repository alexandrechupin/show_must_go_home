class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.space = Space.find(params[:space_id])
    @booking.status = "En attente"
    if @booking.save
      redirect_to user_bookings_path(@booking.user)
    else
      render :new
    end
  end

  def index
    @user = current_user
    @bookings = Booking.where(user_id: @user.id)
  end

  def destroy
    @booking.destroy
    redirect_to user_bookings_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:event_type, :date, :time, :duration, :number_of_guests, :description, :space_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
