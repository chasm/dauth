class Comment < ActiveRecord::Base
  attr_accessible :author_name, :content, :site_url

  belongs_to :article
  
  validates :author_name, presence: true
  validates :content, presence: true
end
