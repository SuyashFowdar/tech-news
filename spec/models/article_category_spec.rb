require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
  it 'creates article_category correctly' do
    @user = User.create(name: 'John')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    @category = Category.create(name: 'Phone', priority: 1)
    @article_category = ArticleCategory.new(category_id: @category.id, article_id: @article.id)
    expect(@article_category.valid?).to be true
  end

  it 'creates article_category with multiple categories' do
    @user = User.create(name: 'John')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    @category1 = Category.create(name: 'Phone', priority: 1)
    @category2 = Category.create(name: 'Tablet', priority: 2)
    @article_category1 = ArticleCategory.new(category_id: @category1.id, article_id: @article.id)
    @article_category2 = ArticleCategory.new(category_id: @category2.id, article_id: @article.id)
    expect(@article_category1.valid?).to be true
    expect(@article_category2.valid?).to be true
  end

  it 'creates article_category with multiple articles' do
    @user = User.create(name: 'John')
    @article1 = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    @article2 = Article.create(title: 'A2', text: 'T2', image: 'img2.jpg', author_id: @user.id)
    @category = Category.create(name: 'Phone', priority: 1)
    @article_category1 = ArticleCategory.new(category_id: @category.id, article_id: @article1.id)
    @article_category2 = ArticleCategory.new(category_id: @category.id, article_id: @article2.id)
    expect(@article_category1.valid?).to be true
    expect(@article_category2.valid?).to be true
  end

  it 'checks if article_category is not created without category' do
    @user = User.create(name: 'John')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    @article_category = ArticleCategory.new(article_id: @article.id)
    expect(@article_category.valid?).to be false
  end

  it 'checks if article_category is not created without article' do
    @category = Category.create(name: 'Phone', priority: 1)
    @article_category = ArticleCategory.new(category_id: @category.id)
    expect(@article_category.valid?).to be false
  end

  it 'checks category is under article' do
    @user = User.create(name: 'John')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    @category = Category.create(name: 'Phone', priority: 1)
    @article_category = ArticleCategory.create(category_id: @category.id, article_id: @article.id)
    expect(@article.categories.first).to eql(@category)
  end

  it 'checks article is under category' do
    @user = User.create(name: 'John')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user.id)
    @category = Category.create(name: 'Phone', priority: 1)
    @article_category = ArticleCategory.create(category_id: @category.id, article_id: @article.id)
    expect(@category.articles.first).to eql(@article)
  end
end
