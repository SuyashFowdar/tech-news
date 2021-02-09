class ArticlesController < ApplicationController
  before_action :signed_in?, only: %i[new create]

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
    @article = Article.new(article_params)
    @article.author_id = session[:user_id]

    if @article.save
      article_categories = []
      params[:categories].each do |category|
        article_categories.push({ category_id: category.to_i, article_id: @article.id }) if category != '0'
      end
      ArticleCategory.create(article_categories)
      flash[:notice] = 'Article was successfully created.'
      redirect_to root_path
    else
      flash[:alert] = 'Article not created!'
      redirect_to new_article_path
    end
  end

  def search
    @articles = Article.where('title LIKE ?', "%#{params[:search]}%")
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image)
  end

  def signed_in?
    return true if session[:user_id] && session[:user_name]

    redirect_to users_sign_in_path
  end
end
