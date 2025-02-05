class Content < ApplicationRecord
    belongs_to :user
    belongs_to :category, optional: true
    belongs_to :moderator, class_name: 'Moderator', optional: true
  
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :tags, dependent: :destroy
  
    validates :title, :body, :media_type, presence: true
  end