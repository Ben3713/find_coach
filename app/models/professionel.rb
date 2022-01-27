class Professionel < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  has_many :reviews
end
