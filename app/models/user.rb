class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :articles, foreign_key: :author_id
  has_many :votes
end
