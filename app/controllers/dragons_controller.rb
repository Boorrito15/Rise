class DragonsController < ApplicationController
  before_action :set_dragon, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    @dragons = Dragon.all
  end

  def show
  end

  def new
    @dragon = Dragon.new
  end

  def create
    @dragon = Dragon.new(dragon_params)
    @dragon.user = current_user
    if @dragon.save
      redirect_to dragon_path(@dragon)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_dragon
    @dragon = Dragon.find(params[:id])
  end

  def dragon_params
    params.require(:dragon).permit(:name, :species, :rating, :speed, :fire_power, :armour, :description)
  end
end
