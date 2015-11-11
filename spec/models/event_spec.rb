require 'rails_helper'

describe Event do
  it {should belong_to :venue }
  it {should belong_to :act}
  it {should validate_presence_of :time_period}
  it {should validate_presence_of :date}
  it {should have_and_belong_to_many :users}
end
