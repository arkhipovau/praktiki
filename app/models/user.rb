class User < ApplicationRecord
  has_secure_password
  
  enum role: { user: 0, moderator: 1 }

  has_many :contents
  has_many :comments
  has_many :likes

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
