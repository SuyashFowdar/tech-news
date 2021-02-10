require 'rails_helper'

RSpec.describe Vote, type: :model do
  it 'creates vote correctly' do
    @user1 = User.create(name: 'John')
    @user2 = User.create(name: 'Tim')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user1.id)
    @vote = Vote.new(user_id: @user2.id, article_id: @article.id)
    expect(@vote.valid?).to be true
  end

  it 'checks if duplicate vote is not created' do
    @user1 = User.create(name: 'John')
    @user2 = User.create(name: 'Tim')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user1.id)
    Vote.create(user_id: @user2.id, article_id: @article.id)
    @vote = Vote.new(user_id: @user2.id, article_id: @article.id)
    expect(@vote.valid?).to be false
  end

  it 'checks if vote is not created without user' do
    @user1 = User.create(name: 'John')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user1.id)
    @vote = Vote.new(article_id: @article.id)
    expect(@vote.valid?).to be false
  end

  it 'checks if vote is not created without article' do
    @user2 = User.create(name: 'Tim')
    @vote = Vote.new(user_id: @user2.id)
    expect(@vote.valid?).to be false
  end

  it 'checks if vote is not created under user' do
    @user1 = User.create(name: 'John')
    @user2 = User.create(name: 'Tim')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user1.id)
    @vote = Vote.create(user_id: @user2.id, article_id: @article.id)
    expect(@user2.votes.first).to eql(@vote)
  end

  it 'checks if vote is not created under article' do
    @user1 = User.create(name: 'John')
    @user2 = User.create(name: 'Tim')
    @article = Article.create(title: 'A1', text: 'T1', image: 'img.jpg', author_id: @user1.id)
    @vote = Vote.create(user_id: @user2.id, article_id: @article.id)
    expect(@article.votes.first).to eql(@vote)
  end
end
