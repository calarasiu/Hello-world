class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, dependent: :destroy
  validates :content, presence: true
  belongs_to :post
  validates :content, length: { minimum: 1 }
end
