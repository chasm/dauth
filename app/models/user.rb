class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable

  attr_accessible :name, :email, :password,
    :password_confirmation, :remember_me,
    :articles, :comments, :assignments, :roles
    
  has_many :articles
  has_many :comments
  has_many :assignments
  has_many :roles, through: :assignments
  
  validates :name, presence: true, uniqueness: true
  validates :email, uniqueness: { case_sensitive: false }
  
  def role_symbols
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end
end
