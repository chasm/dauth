class Article < ActiveRecord::Base
  attr_accessible :author_name, :content, :name
  
  has_many :comments
  
  validates :name, presence: true
  validates :content, presence: true
end
