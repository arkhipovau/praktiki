class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :content
  
    validates :body, presence: true
  end