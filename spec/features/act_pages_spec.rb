require 'rails_helper'


describe 'the add an act process' do
  it 'adds a new act' do
  	visit '/'
  	click_on 'Add an Act'
  	fill_in 'Name', :with => 'Sigur Rod'
  	fill_in 'Genre', :with => 'Electro'
  	fill_in 'Description', :with => 'The Best Band in the World'
  	click_on 'Submit'
  	expect(page).to have_content 'Sigur Rod'
  end

    it "gives error when no name, genre or description is entered" do
    visit new_act_path
    click_on 'Submit'
    expect(page).to have_content 'errors'
  end
end
