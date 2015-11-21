require 'rails_helper'

describe Venue do
  it {expect have_many :events}
  it {expect have_many :acts}
  it {expect validate_presence_of :name}
  it {expect validate_presence_of :address}
end
