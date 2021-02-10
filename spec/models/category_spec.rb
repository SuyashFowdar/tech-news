require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'creates category correctly' do
    @category = Category.new(name: 'Phone', priority: 1)
    expect(@category.valid?).to be true
  end

  it 'checks if catgory can be created without name' do
    @category = Category.new(priority: 1)
    expect(@category.valid?).to be false
  end

  it 'checks if catgory can be created without priority' do
    @category = Category.new(name: 'Phone')
    expect(@category.valid?).to be false
  end
end
