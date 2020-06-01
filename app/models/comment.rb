require "uri"

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :content, presence: true
  validates :content, length: { minimum: 1 }

  include PgSearch::Model
  pg_search_scope :global_search,
    against:[:content],
      associated_against: {
        post: [:content]
      },
      using: {
        tsearch: {prefix: true}
      }

  def content_with_links
    urls = URI.extract(content, ['http', 'https'])
    urls.each do |url|
      url.delete_suffix!(url[-1]) if url[-1].match?(/\W/)
      content.gsub!(url, "<a href='#{url}' target='_blank' class='primary-text'>#{url}</a>")
    end
    content.html_safe
  end 
end
