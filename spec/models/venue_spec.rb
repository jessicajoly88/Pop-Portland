require 'rails_helper'

describe Venue do 
  it {should have_many :events}
  it {should have_many :acts}
  it {should validate_presence_of :name}
  it {should validate_presence_of :address}
end