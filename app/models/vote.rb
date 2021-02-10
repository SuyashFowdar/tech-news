class Vote < ApplicationRecord
  validates :article_id, presence: true, uniqueness: { scope: :user_id }
  validates :user_id, presence: true

  belongs_to :article
  belongs_to :user
end
