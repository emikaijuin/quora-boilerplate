class User < ActiveRecord::Base
  ## Attribute Validations
  validates :email, uniqueness: true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
  has_secure_password
end