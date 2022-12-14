class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]
  # before_action :set_dragon, only: [:create]
  def index
    @bookings_accepted = current_user.bookings.where("status = 'accepted' AND start_date >= ?", Time.now)
    @bookings_pending = current_user.bookings.where(status: "pending")
    @bookings_rejected = current_user.bookings.where(status: "rejected")
    @bookings_past = current_user.bookings.where("status = 'accepted' AND start_date < ?", Time.now)

    @host_request = Booking.where(dragon: current_user.dragons)
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
      redirect_to dragon_booking_path(@dragon, @booking), notice: "Your request has been sent!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    status = params[:status]
    @booking.status = status
    @booking.save
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :departure_location, :arrival_location)
  end
end
