class User < ActiveRecord::Base
  ## Attribute Validations
  validates :email, uniqueness: true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
  ## BCrypt Password 
  has_secure_password
  ## Associations
  has_many :questions
end