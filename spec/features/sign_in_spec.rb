require 'rails_helper'

RSpec.feature 'SignIn', type: :feature do
  before :each do
    @user = User.create(name: 'John')
    visit users_sign_in_path
  end

  it 'user can login and it is redirected' do
    fill_in 'Name', with: @user.name
    click_button 'Sign In'
    expect(current_path).to eq(root_path)
  end

  it 'wrong user can not login' do
    fill_in 'Name', with: 'Tim'
    click_button 'Sign In'
    expect(page).to have_text('User not found.')
  end
end
