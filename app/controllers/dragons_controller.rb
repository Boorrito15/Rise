class DragonsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dragons = Dragon.all
  end
end
