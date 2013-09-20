require 'spec_helper'

feature 'Signing in' do
  before do
    @user = FactoryGirl.create(:user)
  end

  scenario 'Signing in via form' do
    @user.confirm!
    visit '/'
    click_link 'Sign in'
    fill_in "Email", :with => @user.email
    fill_in "Password", :with => "password456"
    click_button 'Sign in'
    page.should have_content "Signed in as #{@user.email}"

  end
end
