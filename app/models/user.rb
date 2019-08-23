class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :spaces, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :space_bookings, through: :spaces, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :email, presence: true, uniqueness: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :phone_number, presence: true

  mount_uploader :photo, PhotoUploader
end
