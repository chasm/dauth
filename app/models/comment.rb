class Comment < ActiveRecord::Base
  attr_accessible :author_name, :content, :site_url,
    :user, :article

  belongs_to :user
  belongs_to :article
  
  validates :author_name, presence: true
  validates :content, presence: true
end
