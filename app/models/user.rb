class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :dragons, dependent: :destroy
  validates :username, presence: true, uniqueness: true, length: { minimum: 6 }
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :gender, presence: true
  validates :tribe, presence: true
end
