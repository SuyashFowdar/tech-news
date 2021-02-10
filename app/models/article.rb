class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :image, presence: true

  belongs_to :author, class_name: 'User'
  has_many :votes

  has_many :article_categories, foreign_key: :article_id
  has_many :categories, through: :article_categories, source: :category
end
