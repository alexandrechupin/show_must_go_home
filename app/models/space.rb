class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :equipment, presence: true
  validates :event_type, presence: true
  validates :place_type, presence: true
  validates :capacity, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
