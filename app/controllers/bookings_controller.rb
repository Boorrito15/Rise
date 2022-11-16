class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @dragon = Booking.new(dragon_params)
    @booking.user = current_user
    if @dragon.save
      redirect_to dragon_path(@dragon)
    else
      render :new, status: :unprocessable_entity
    end
  end


end
