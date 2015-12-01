require 'rails_helper'

describe Favorite do
  it {should belong_to :user}
  it {should belong_to :event}
  it {should validate_uniqueness_of :event_id}
end
