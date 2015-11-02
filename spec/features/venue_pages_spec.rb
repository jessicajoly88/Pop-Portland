require 'rails_helper'


describe 'the add an venue process' do
  it 'adds a new venue' do
  	visit '/'
  	click_on 'Add a Venue'
  	fill_in 'Name', :with => 'Harpa'
  	fill_in 'Address', :with => '155 Belmont'
  	click_on 'Submit'
    visit venues_path
  	expect(page).to have_content 'Harpa'
  end

    it "gives error when no name or address is entered" do
    visit new_venue_path
    click_on 'Submit'
    expect(page).to have_content 'errors'
  end
end
