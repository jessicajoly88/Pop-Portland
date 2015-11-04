class Venue < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  has_many :events
  has_many :acts, through: :events
  validates :name, :presence => true
  validates :address, :presence => true
end
