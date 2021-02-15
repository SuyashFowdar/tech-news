require 'rails_helper'

RSpec.feature 'SignUp', type: :feature do
  before :each do
    @user = User.new(name: 'John')
    visit users_sign_up_path
  end

  it 'user can Sign up and it is redirected' do
    fill_in 'Name', with: @user.name
    click_button 'Create User'
    expect(current_path).to eq(root_path)
  end

  it 'name can not be empty' do
    click_button 'Create User'
    expect(page).to have_text('User was not created!')
  end

  it 'name must be unique' do
    @user2 = User.create(name: 'John')
    fill_in 'Name', with: @user.name
    click_button 'Create User'
    expect(page).to have_text('User was not created!')
  end
end
