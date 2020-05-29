class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memeberships
  has_many :posts, dependent: :destroy
  validates :last_name, :first_name, presence: true
end
