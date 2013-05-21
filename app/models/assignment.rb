class Assignment < ActiveRecord::Base
  attr_accessible :role, :user
  
  belongs_to :role
  belongs_to :user
end
