require 'rails_helper'

def log_in(user)
  visit root_url
  click_link 'Login'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end

describe 'the favorite process' do
  it 'creates a new user favorite' do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    act = Act.create(:name => "Ariel Pink", :genre => "folk", :description => "the best band around", :website => "www.arielpink.com")
    visit acts_path(act)
    click_on 'Add to Schedule'
    expect(page).to have_content "Here's your schedule"
  end

end


