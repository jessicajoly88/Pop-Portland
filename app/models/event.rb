class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :act
  has_many :favorites
  has_many :users, through: :favorites


  validates :time_period, :presence => true
  validates :date, :presence => true
end
