class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]

  def index
    articles = Article.includes(:votes)
    @most_voted_article = nil
    articles.each do |a|
      @most_voted_article = a if @most_voted_article.nil? || a.votes.length > @most_voted_article.votes.length
    end
    @categories = Category.all.order('priority')
    @list = {}
    @categories.each do |category|
      @list[category.id] = category.articles.order('created_at').last
    end
  end

  def show
    @articles = @category.articles.includes('author').order('created_at DESC')
  end

  def vote
    @vote = Vote.new(user_id: session[:user_id], article_id: params[:article])
    if @vote.save
      flash[:notice] = 'Article was successfully voted.'
    else
      flash[:alert] = 'Article not voted!'
    end
    redirect_to category_path(params[:category])
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
