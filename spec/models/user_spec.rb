require 'rails_helper'

describe User do
  it {expect have_many :events}
  it {expect have_many :favorites}
end
