class User < ApplicationRecord
  has_secure_password
  belongs_to :hometown, class_name: "Location"
  has_many :trips
  has_many :visits, through: :trips
  has_many :attractions, through: :trips
  has_many :locations, through: :trips
  has_many :comments

  validates :name, :username, :hometown, presence: true
  validates :username, uniqueness: true
end
