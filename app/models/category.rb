class Category < ApplicationRecord
  validates :name, presence: true
  validates :priority, presence: true

  has_many :article_categories, foreign_key: :category_id
  has_many :articles, through: :article_categories, source: :article
end
