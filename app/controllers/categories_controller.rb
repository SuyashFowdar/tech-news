class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]

  def index
    @most_voted_article = nil
    @most_voted_article = ActiveRecord::Base.connection.execute(
      'SELECT a.* FROM articles a
      JOIN (SELECT a.id a_id, COUNT(v.id)
      FROM articles a JOIN votes v ON a.id=article_id
      GROUP BY a.id) c ON c.a_id=a.id
      ORDER BY c.count DESC LIMIT 1'
    ).first
    @categories = ActiveRecord::Base.connection.execute(
      'SELECT * FROM articles a
      JOIN (SELECT ac.category_id, MAX(a.created_at)
      FROM articles a
      JOIN article_categories ac ON a.id=ac.article_id
      GROUP BY ac.category_id) m ON m.max = a.created_at
      JOIN categories c ON c.id=m.category_id'
    )
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
