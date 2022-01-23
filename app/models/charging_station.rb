class ChargingStation < ApplicationRecord
  geocoded_by :address, latitude: :latitude, longitude: :longitude
  after_validation :geocode, :if => :address_changed?

  validates :address, :city, :state, presence: true

  def full_address
    "#{address}, #{city}, #{state}"
  end
end
