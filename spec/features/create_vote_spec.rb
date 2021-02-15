require 'rails_helper'

RSpec.feature 'CreateVote', type: :feature do
  before :each do
    @user = User.create(name: 'John')
    # post users_create_session_path @user2
    article = Article.create(title: 'Title', text: 'Text', image: 'Image', author: @user)
    category = Category.create(name: 'Phone', priority: 1)
    ArticleCategory.create(article: article, category: category)
    visit users_sign_in_path
    fill_in 'Name', with: @user.name
    click_button 'Sign In'
    visit category_path(category.id)
  end

  it 'checks if user can create a vote' do
    click_link 'Vote'
    expect(page).to have_text('Article was successfully voted.')
  end
end
