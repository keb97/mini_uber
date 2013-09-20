require 'spec_helper'

feature 'Signing up' do
  scenario 'Sign up is successful' do
    visit '/'
    click_link 'Sign up'
    fill_in "Email", :with => "newuser@example.com"
    fill_in "Password", :with => "password"
    fill_in "Username", :with => "newuser123"
    click_button 'Sign up'
    page.should have_content("You have signed up!")
  end
end
