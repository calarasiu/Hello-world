class Group < ApplicationRecord
  has_many :posts
  has_many :memberships
end
