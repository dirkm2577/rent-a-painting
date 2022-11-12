class BookingsController < ApplicationController
  before_action :set_article, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.painting = @painting
    if @booking.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to bookings_path, status: :see_other
end

  private

  def set_article
    @painting = Painting.find(params[:painting_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date, :return_date)
  end
end
