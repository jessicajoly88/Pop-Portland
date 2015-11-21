require 'rails_helper'

describe Event do
  it {expect belong_to :venue }
  it {expect belong_to :act}
  it {expect have_many :users}
  it {expect have_many :favorites}
  it {expect validate_presence_of :time_period}
  it {expect validate_presence_of :date}
end
