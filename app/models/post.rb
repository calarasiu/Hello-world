require "uri"
class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :bookmarks, dependent: :destroy
  validates :content, presence: true
  has_many :comments, dependent: :destroy
  has_many :upvotes, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :global_search,
    against:[:content]
    
  def content_with_links
    urls = URI.extract(content, ['http', 'https'])
    urls.each do |url|
      url.delete_suffix!(url[-1]) if url[-1].match?(/\W/)
      content.gsub!(url, "<a href='#{url}' target='_blank' class='primary-text'>#{url}</a>")
    end
    content.html_safe
  end
end
