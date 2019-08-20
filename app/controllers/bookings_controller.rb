class BookingsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
  end
end
