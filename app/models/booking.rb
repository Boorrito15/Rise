class Booking < ApplicationRecord
  belongs_to :dragon
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
  validates :price, presence: true
  validates :departure_location, presence: true
  validates :arrival_location, presence: true
end
