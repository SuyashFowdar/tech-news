require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates user correctly' do
    @user = User.new(name: 'John')
    expect(@user.valid?).to be true
  end

  it 'checks if user can be created without name' do
    @user = User.new
    expect(@user.valid?).to be false
  end

  it 'checks if user with same name can be created' do
    User.create(name: 'John')
    @user = User.new(name: 'John')
    expect(@user.valid?).to be false
  end
end
