class Professionel < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
