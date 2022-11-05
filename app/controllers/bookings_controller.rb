class BookingsController < ApplicationController
  before_action :set_article, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @painting = Painting.find(params[:painting_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    # raise
    @booking.painting = @painting
    if @booking.save!
      redirect_to painting_bookings_path(@painting)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def set_article
    @painting = Painting.find(params[:painting_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
