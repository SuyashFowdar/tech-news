require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'creates article correctly' do
    @user = User.create(name: 'John')
    @article = Article.new(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    expect(@article.valid?).to be true
  end

  it 'checks if article can be created without title' do
    @user = User.create(name: 'John')
    @article = Article.new(text: 'T1', image: 'img.jpg', author_id: @user.id)
    expect(@article.valid?).to be false
  end

  it 'checks if article can be created without text' do
    @user = User.create(name: 'John')
    @article = Article.new(title: 'A1', image: 'img.jpg', author_id: @user.id)
    expect(@article.valid?).to be false
  end

  it 'checks if article can be created without image' do
    @user = User.create(name: 'John')
    @article = Article.new(title: 'A1', text: 'T1', author_id: @user.id)
    expect(@article.valid?).to be false
  end

  it 'checks if article can be created without author' do
    @article = Article.new(title: 'A1', text: 'T1', image: 'img.jpg')
    expect(@article.valid?).to be false
  end

  it 'checks if article is saved under author' do
    @user = User.create(name: 'John')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    expect(@user.articles.first).to eql(@article)
  end
end
