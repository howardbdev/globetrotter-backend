class User < ApplicationRecord
  has_secure_password

  belongs_to :hometown, class_name: "Location"
end
