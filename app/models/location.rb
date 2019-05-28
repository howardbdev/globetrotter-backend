class Location < ApplicationRecord
  has_many :residents, foreign_key: :hometown_id, class_name: "User"
end
