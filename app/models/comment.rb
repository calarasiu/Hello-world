class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, dependent: :destroy
  validates :content, presence: true
end
