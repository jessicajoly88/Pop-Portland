class Song < ActiveRecord::Base
  belongs_to :act
  validates :url, :presence => true
  validates :html, :presence => true
end
