class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  validates :name, presence: true, uniqueness: true
  validates :email, uniqueness: { case_sensitive: false }
end
