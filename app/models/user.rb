class User < ApplicationRecord
    has_secure_password
  
    has_many :contents
    has_many :comments
    has_many :likes
    has_many :notifications, foreign_key: :recipient_id
  
    enum role: { user: 0, moderator: 1 }
  
    validates :username, :email, presence: true, uniqueness: true
  end