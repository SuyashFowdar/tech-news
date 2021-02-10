class ArticleCategory < ApplicationRecord
  validates :article_id, presence: true
  validates :category_id, presence: true

  belongs_to :article
  belongs_to :category
end
