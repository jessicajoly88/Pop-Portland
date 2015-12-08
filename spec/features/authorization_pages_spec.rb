require 'rails_helper'

def log_in(user)
  visit root_url
  click_link 'Login'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end

def log_out(user)
  visit root_url
  click_link 'Log out'
  expect(page).to have_content("Login")
end

describe "authorizations" do
  it "allows a new user to sign up" do
    visit root_url
    expect(page).to have_content "Login"
    expect(page).to_not have_content "Log out"
    click_link "Sign up"
    fill_in "Name", with: "Example User"
    fill_in "Email", with: "example_user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to_not have_content("errors")
    expect(page).to have_content("Log out")
  end

  it "allows a user to login" do
    user = FactoryGirl.create(:user)
    visit root_url
    expect(page).to have_content "Login"
    expect(page).to_not have_content "Log out"
    log_in user
    expect(page).to_not have_content("errors")
    expect(page).to have_content("Log out")
  end

  it "displays an error if user password is wrong" do
    user = FactoryGirl.create(:user)
    visit root_url
    click_on 'Login'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => "boo"
    click_on 'Log in'
    expect(page).to have_content "Invalid email or password."
  end

   it "displays an error if user email is wrong" do
    user = FactoryGirl.create(:user)
    visit root_url
    click_on 'Login'
    fill_in 'Email', :with => 'jessicajoly88@gmail.com'
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    expect(page).to have_content "Invalid email or password."
  end

  it "allows a user to log out" do
    user = FactoryGirl.create(:user)
    visit root_url
    log_in user
    log_out user
    expect(page).to have_content "Signed out successfully."
  end
end
