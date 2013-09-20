require 'spec_helper'

feature 'Signing in' do
  before do
    FactoryGirl.create(:user)
  end

  scenario 'Signing in from confirmation email link' do
    open_email "user@example.com", :with_subject => /Confirmation/
    click_first_link_in_email
    page.should have_content("Your account was successfully confirmed")
    page.should have_content("Signed in as user@example.com")
  end
end

