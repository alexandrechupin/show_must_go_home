class Space < ApplicationRecord
  SPACETYPE = ["salon", "loft", "jardin", "terrasse", "grange", "bureau"]
  EVENTTYPE = ["tous concerts", "événements classique", "événements folk", "événements jazz", "événements pop/rock", "lectures", "événements assis", "événements festifs"]
  EQUIPMENTTYPE = ["piano droit", "piano à queue", "ascenseur", "arrivée électrique", "chaises pliantes", "chaises fixes", "coussins", "table", "verres", "cafetière", "bouilloire", "réfrigérateur"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :equipment, presence: true
  validates :event_type, presence: true, inclusion: { in: EVENTTYPE}
  validates :place_type, presence: true, inclusion: { in: SPACETYPE}
  validates :capacity, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
  serialize :equipement
  geocoded_by :address
  after_validation :geocode

  def address
    [street, city].compact.join(', ')
  end

  include PgSearch::Model
  pg_search_scope :global_search, against: {
    city: 'A',
    zipcode: 'B',
    place_type: 'C'
  },
    against: [ :name, :city, :zipcode, :event_type, :place_type, :street ],
    using: {
      tsearch: { prefix: true }
    }
end
