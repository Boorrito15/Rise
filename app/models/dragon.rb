class Dragon < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :species, presence: true
  validates :rating, presence: true
  validates :speed, presence: true
  validates :fire_power, presence: true
  validates :armour, presence: true
  validates :description, presence: true
end
