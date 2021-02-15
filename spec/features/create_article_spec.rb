require 'rails_helper'

RSpec.feature 'CreateArticle', type: :feature do
  before :each do
    @user = User.create(name: 'John')
    @article = Article.new(title: 'Something', text: 'Some Text', image: 'Some-Image')
    @category = Category.create(name: 'Phone', priority: 1)
    visit users_sign_in_path
    fill_in 'Name', with: @user.name
    click_button 'Sign In'
    visit new_article_path
  end

  it 'checks if user can create an article' do
    fill_in 'Title', with: @article.title
    fill_in 'Text', with: @article.text
    page.find_by_id('img-url').fill_in with: @article.image
    click_button 'Create Article'
    expect(current_path).to eq(root_path)
    expect(page).to have_text('Article was successfully created.')
  end
end
