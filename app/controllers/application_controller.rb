class ApplicationController < ActionController::Base
  before_action :set_categories

  def set_categories
    @nav_categories = Category.all
  end
end
