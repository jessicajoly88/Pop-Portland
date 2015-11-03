require 'rails_helper'

describe Song do
  it {should belong_to :act}
  it {should validate_presence_of :url}
  it {should validate_presence_of :html}
end
