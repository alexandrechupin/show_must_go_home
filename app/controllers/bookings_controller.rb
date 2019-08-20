class BookingsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.space = Space.find(params[:space_id])
    @booking.status = "Pending"
    if @booking.save
      redirect_to space_path(Space.find(params[:space_id]))
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_type, :date, :time, :duration, :number_of_guests, :description, :space_id)
  end
end
