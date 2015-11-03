class Act < ActiveRecord::Base
  has_many :events
  has_many :songs
  has_many :venues, through: :events
  accepts_nested_attributes_for :songs
  validates :name, :presence => true
  validates :genre, :presence => true
  validates :description, :presence => true
end
