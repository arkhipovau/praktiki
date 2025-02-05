class Category < ApplicationRecord
    has_many :contents
  
    validates :name, presence: true, uniqueness: true
  end
  