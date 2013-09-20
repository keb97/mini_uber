require 'spec_helper'

feature 'Confirming sign-up' do
  before do
    @user = FactoryGirl.create(:user)
  end

  scenario 'Confirming sign-up via email' do
    open_email @user.email
    click_first_link_in_email
    page.should have_content("Your account was successfully confirmed. Please sign in")
  end
end
