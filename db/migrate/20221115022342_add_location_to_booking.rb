class AddLocationToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :departure_location, :string
    add_column :bookings, :arrival_location, :string
  end
end
