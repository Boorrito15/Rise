class DragonsController < ApplicationController
  before_action :set_dragon, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dragons = Dragon.all
  end

  def show
  end

  private

  def set_dragon
    @dragon = Dragon.find(params[:id])
  end

  def dragon_params
    params.require(:dragon).permit(:name, :species, :rating, :speed, :fire_power, :armour, :description)
  end
end
