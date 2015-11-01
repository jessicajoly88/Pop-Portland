class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :act
  validates :time_period, :presence => true
  validates :date, :presence => true 
end