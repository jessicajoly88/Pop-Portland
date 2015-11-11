class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :act
  has_and_belongs_to_many :users
  validates :time_period, :presence => true
  validates :date, :presence => true
end
