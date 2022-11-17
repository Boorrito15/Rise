class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]
  # before_action :set_dragon, only: [:create]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @dragon = Dragon.find(params[:dragon_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.user = current_user
    @dragon = Dragon.find(params[:dragon_id])
    @booking.dragon = @dragon
    if @booking.save
      redirect_to dragon_booking_path(@dragon, @booking), notice: "BLA"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :departure_location, :arrival_location)
  end
end
