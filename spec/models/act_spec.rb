require 'rails_helper'

describe Act do
  it {expect have_many :events}
  it {expect have_many :venues}
  it {expect have_many :songs}
  it {expect validate_presence_of :name}
  it {expect validate_presence_of :genre}
  it {expect validate_presence_of :description}
end
