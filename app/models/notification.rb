class Notification < ApplicationRecord
    belongs_to :recipient, class_name: 'User'
    belongs_to :actor, class_name: 'User', optional: true
    belongs_to :content, optional: true
  
    validates :message, presence: true
  end