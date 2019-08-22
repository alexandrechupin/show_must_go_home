class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  validates :event_type, presence: true
  validates :status, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :description, presence: true
end
