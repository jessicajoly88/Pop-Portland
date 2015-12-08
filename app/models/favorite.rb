class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  validates :event_id, uniqueness: true
end
