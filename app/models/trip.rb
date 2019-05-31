class Trip < ApplicationRecord
  belongs_to :user
  has_many :visits
  has_many :attractions, through: :visits
  has_many :locations, through: :attractions 
end
