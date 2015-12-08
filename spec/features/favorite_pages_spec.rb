require 'rails_helper'

def log_in(user)
  visit root_url
  click_link 'Login'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end

context 'the favorite process' do
  it 'creates a new user favorite through the act page' do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    click_link("Ariel Pink", :match => :first)
    click_button('Add to Schedule', :match => :first)
    expect(page).to have_content "You're going to this event!"
  end

  it 'creates a new user favorite through the venue page' do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    visit venues_path
    click_link("Goodfoot Pub & Lounge", :match => :first)
    click_button('Add to Schedule', :match => :first)
    expect(page).to have_content "You're going to this event!"
  end

  it 'creates a new user favorite through the schedule page' do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    visit events_path
    click_button('Add to Schedule', :match => :first)
    expect(page).to have_content "You're going to this event!"
  end

  it 'deletes a user favorite' do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    click_link("Ariel Pink", :match => :first)
    click_button('Add to Schedule', :match => :first)
    expect(page).to have_content "Festival Schedule"
    click_on "Delete Event"
    expect(page).to_not have_content "Ariel Pink"
  end

  it 'returns an error if event is already a user favorite' do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    click_link("Ariel Pink", :match => :first)
    click_button('Add to Schedule', :match => :first)
    expect(page).to have_content "Festival Schedule"
    visit root_url
    click_link("Ariel Pink", :match => :first)
    click_button('Add to Schedule', :match => :first)
    expect(page).to have_content "This event has already been added to your schedule!"
  end
end


