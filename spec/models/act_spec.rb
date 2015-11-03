require 'rails_helper'

describe Act do
  it {should have_many :events}
  it {should have_many :venues}
  it {should have_many :songs}
  it {should validate_presence_of :name}
  it {should validate_presence_of :genre}
  it {should validate_presence_of :description}
end
