class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :image, presence: true

  belongs_to :author, class_name: 'User'
  has_many :votes

  has_many :article_categories, foreign_key: :article_id
  has_many :categories, through: :article_categories, source: :category

  scope :most_voted, (lambda do
    joins('JOIN (SELECT a.id a_id, COUNT(v.id)
      FROM articles a JOIN votes v ON a.id=article_id
      GROUP BY a.id) c ON c.a_id=id').order('c.count DESC').limit(1).first
  end)

  scope :latest_for_categories, (lambda do
    joins('JOIN (SELECT ac.category_id, MAX(a.created_at)
      FROM articles a
      JOIN article_categories ac ON a.id=ac.article_id
      GROUP BY ac.category_id) m ON m.max = created_at
      JOIN categories c ON c.id=m.category_id').select('*')
  end)
end
