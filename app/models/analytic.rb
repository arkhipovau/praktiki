class Analytic < ApplicationRecord
    belongs_to :content, optional: true
    belongs_to :user, optional: true
  
    validates :action_type, presence: true
  end