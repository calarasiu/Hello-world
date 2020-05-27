class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks
  has_many :comments
  has_many :memberships
  has_many :groups, through: :memeberships
  has_many :posts
  validates :last_name, :first_name, presence: true
end
