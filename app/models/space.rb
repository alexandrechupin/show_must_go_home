class Space < ApplicationRecord
  SPACETYPE = ["salon", "loft", "jardin", "terrasse", "grange", "bureau"]
  EVENTTYPE = ["tous concerts", "événements classique", "événements folk", "événements jazz", "événements pop/rock", "lectures", "événements assis", "événements festifs"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :equipment, presence: true
  validates :event_type, presence: true, inclusion: { in: ["tous concerts", "événements classique", "événements folk", "événements jazz", "événements pop/rock", "lectures", "événements assis", "événements festifs"] }
  validates :place_type, presence: true, inclusion: { in: ["salon", "loft", "jardin", "terrasse", "grange", "bureau"]}
  validates :capacity, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
