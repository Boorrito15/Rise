class BookingsController < ApplicationController
<<<<<<< HEAD
  before_action :set_booking, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]
=======
  before_action :set_booking, only: [:show, :edit, :update, :create]
  before_action :set_dragon, only: [:create]
>>>>>>> e454733909b0ff2962472efc7b85e5d51fea42c9
  def index
    @bookings = Booking.all
  end

<<<<<<< HEAD
  def new
    @booking = Booking.new
  end

  def create
    @dragon = Booking.new(dragon_params)
    @booking.user = current_user
    if @dragon.save
      redirect_to dragon_path(@dragon)
=======
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
      redirect_to booking_path(@booking)
>>>>>>> e454733909b0ff2962472efc7b85e5d51fea42c9
    else
      render :new, status: :unprocessable_entity
    end
  end

<<<<<<< HEAD

=======
  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :departure_location, :arrival_location)
  end
>>>>>>> e454733909b0ff2962472efc7b85e5d51fea42c9
end
