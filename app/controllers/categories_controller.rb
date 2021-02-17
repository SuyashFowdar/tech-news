class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]

  def index
    @most_voted_article = Article.most_voted
    @categories = Article.latest_for_categories
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
