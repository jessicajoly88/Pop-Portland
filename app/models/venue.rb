class Venue < ActiveRecord::Base
  has_many :events
  has_many :acts, through: :events 
  validates :name, :presence => true 
  validates :address, :presence => true 
end 