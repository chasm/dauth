class Article < ActiveRecord::Base
  attr_accessible :author_name, :content, :name,
    :user, :comments
  
  belongs_to :user
  has_many :comments
  
  validates :name, presence: true
  validates :content, presence: true
end
